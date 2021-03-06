using SimJulia

function car(env::Environment, name::Int, bcs::Resource, driving_time::Float64, charge_duration::Float64)
  yield(Timeout(env, driving_time))
  println("$name arriving at $(now(env))")
  yield(Request(bcs))
  println("$name starting to charge at $(now(env))")
  yield(Timeout(env, charge_duration))
  println("$name leaving the bcs at $(now(env))")
  yield(Release(bcs))
end

env = Environment()
bcs = Resource(env, 2)
for i=0:3
  Process(env, car, i, bcs, 2.0*i, 5.0)
end
run(env)
