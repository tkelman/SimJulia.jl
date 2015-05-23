using SimJulia

function resource_user(env::Environment, name::Int, res::Resource, wait::Float64, prio::Int)
  yield(timeout(env, wait))
  println("$name requesting at $(now(env)) with priority=$prio")
  yield(request(res, prio))
  println("$name got resource at $(now(env))")
  yield(timeout(env, 3.0))
  yield(release(res))
end

env = Environment()
res = Resource(env, 1)
p1 = Process(env, resource_user, 1, res, 0.0, 0)
p2 = Process(env, resource_user, 2, res, 1.0, 0)
p3 = Process(env, resource_user, 3, res, 2.0, -1)
run(env)