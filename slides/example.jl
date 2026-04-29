# import packages
#

struct Student
  name::String
  year::Int64
end

function double_func(val::Int64)::Int64
  return 2 * val
end

function double_func(val::Float64)::Float64
  return 2 * val
end

function double_func(val::String)::String
  return val * "-" * val
end

function st_name(st::Student)::String
  return st.name
end

println(double_func(44))

println(double_func(4.6))

println(double_func("Me!"))

st1 = Student("Peter Malbec", 4)

println(st_name(st1))
