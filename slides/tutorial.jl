### A Pluto.jl notebook ###
# v0.20.24

using Markdown
using InteractiveUtils

# ╔═╡ aed7ea62-3d79-11f1-9771-47315bb67abb
using PlutoUI

# ╔═╡ 258c62e8-c2ad-4de9-9ea2-0da1d68167c7
using DataStructures

# ╔═╡ 93b48d96-9b0f-452a-a329-0168091093c1
using BenchmarkTools

# ╔═╡ f1f57089-7c5a-4578-9d89-9cfaa0f394a6
using TOML

# ╔═╡ 33a4278c-31f2-470f-bfb7-3aff2a5e5149
using LinearAlgebra

# ╔═╡ 5d973c45-631e-4f22-bdbb-b2fdb03a864f
using GameTheory

# ╔═╡ 30650d03-79d2-4914-a9a2-40ca28db56d7


# ╔═╡ 73e09561-3123-4111-af82-c37ac72f4f68
PlutoUI.TableOfContents()

# ╔═╡ 9ad7781f-8eba-42e4-886f-5cbb607174a0
md"# Introduction to Julia"

# ╔═╡ eae15ce2-04a2-4c6e-8521-8e7216dd16c0
md"""[Julia](https://julialang.org) is a high-performance programming language that can be used in various contexts, including data science and artificial intelligence."""

# ╔═╡ 1928de75-ea6b-409b-891f-e6324bfc2d58
md"## REPL"

# ╔═╡ 7c8bc45a-a016-4d24-b4a4-d2d2c47db341
md"""The read-eval-print loop provides a CLI to interact with the language. There are four modes
- __Julian__ mode, where Julia code can be executed
- __help__ mode, which you can access by typing ?
- __Package__ mode to access and manage packages
- __Shell__ mode, which you can access by typing ;
"""

# ╔═╡ d47e2258-f8cd-4f91-9618-43af99ac0eb5
md"## Local Environment"

# ╔═╡ 209af2ee-eea6-4206-a8b0-2bb1e36b11ed
md"""You can create a project and maintain a local environment. First create the folder, e.g, __juliaeg__. Then change to the directory and start your Julia session as `julia --project=.`. This will create two files: __Project.toml__ and __Manifest.toml__. All your packages will be installed locally with references in the aforementioned files.  
"""

# ╔═╡ 5e433733-1663-48d8-b02b-cdaa1a3d9398
md"## Types"

# ╔═╡ a9228e88-8ca5-4563-b40a-5d56ae0fd480
md"""The Julia language comes with various types, including
* String
* Symbol
* Integer
* Float

For more inforation read the following [link](https://docs.julialang.org/en/v1/manual/types/).
"""

# ╔═╡ a55c3054-02d4-4ce8-a614-f7484ab4db80
val3 = 89

# ╔═╡ 259bf516-354d-4f4a-b63f-4218573ea701
typeof(val3)

# ╔═╡ f03d0b15-3dde-4514-9e33-43fcd85ebd96
val33 = Int32(80)

# ╔═╡ 646da2ff-154f-45e0-9fc5-e975a74c3e9b
typeof(val33)

# ╔═╡ d66fe746-a2a5-480e-891f-71346ca7687b
val4 = 0.2

# ╔═╡ c7197dc6-feb8-4dcb-bd16-9e3c3999b874
typeof(val4)

# ╔═╡ a4ce5b1c-dfb2-4148-b79d-e2334659524a
val5 = :hi

# ╔═╡ 54793d82-e234-490d-8d23-32f231e95d77
typeof(val5)

# ╔═╡ 4eb15fea-3473-4f06-a3e5-d3de91f0bcf6
val6 = "hello"

# ╔═╡ 4db212ea-ccfd-47a0-8af5-67470e02fb02
typeof(val6)

# ╔═╡ 8ffe033e-1a23-4584-9bcd-dadeafa8f128
md"## Data Structures"

# ╔═╡ f053fdf3-78d3-403b-bd7a-e12a45292589
md"""We will focus on the following data structures:
* Dictionary
* Tuple
* Array
* Range
* Object
"""

# ╔═╡ 056caaeb-5b59-4040-bede-6142e8ab51f8
my_dict = Dict{String, Int32}("one" => 1, "two" => 2, "three" => 3)

# ╔═╡ 7ca6bfcc-90a8-496c-bbf1-f757ba088235
push!(my_dict, "four" => 4)

# ╔═╡ 9cc79af7-6e5b-4072-965f-2287d20312d1
my_dict

# ╔═╡ f9b2e0c2-0aeb-491c-94d0-f7ad3a4a3bf1
my_dict["one"]

# ╔═╡ 8342fdce-3bd5-4c09-9b47-33e4a602bdf4
my_dict[1]

# ╔═╡ bb4e2a31-f2f9-46e0-a173-d344fe7d4c7e
another_dict = Dict(1 => (1, "Hello", 0.4))

# ╔═╡ d46dfbb2-1aba-498d-9bd0-e38b1cc6a618
typeof(another_dict)

# ╔═╡ fc3f9bcf-a7a7-4b47-b1f3-2ba3a40f6bee
my_tup = (4, "Yes", :yellow)

# ╔═╡ 6aa66746-5461-4f98-a8d3-e6719e966125
typeof(my_tup)

# ╔═╡ e9a9860c-74c6-4ecd-99ed-f5ff5dc6d0c1
my_tup[1]

# ╔═╡ 73e3a2a7-84a1-4ce2-b51a-abe17766f06b
for i in 1:3
        println(my_tup[i])
end

# ╔═╡ 7b44119e-720b-4fb0-8a6d-1af5039f947b
my_tup[4] = "Hi"

# ╔═╡ d959f49c-a286-4a73-bd7c-f3b36a302bc8
my_tup[2] = "Me"

# ╔═╡ 3935e7c4-cf84-4426-a4d6-481832434b3c
length(my_tup)

# ╔═╡ 8013d2bb-7f81-4b6e-b251-ebf91e7e1d70
my_tup2 = ((; comp1 = 4, compo2 = "Hello!"))

# ╔═╡ 18e78f10-b715-49a0-9ca3-b531cd2a9de7
my_tup2.comp1

# ╔═╡ ee0712d6-dbe0-4812-90df-43e361ddfd2b
my_tup2[1]

# ╔═╡ 31b6f431-5d1f-4ebe-b0a2-dc0be1448f13
x = Vector{Int64}()

# ╔═╡ 0dece94f-46bb-4402-a3ba-320f6b2b348a
push!(x, 34)

# ╔═╡ 75101e9f-0ab1-4f05-b67b-656fdf49b685
vec2 = Int64[2, 4, 5, 6, 7]

# ╔═╡ 4339bfaf-d5e3-45d4-8314-9942db3a825d
maximum(vec2)

# ╔═╡ 41609f23-7646-4997-b782-0df6eec28e8b
minimum(vec2)

# ╔═╡ dd5d2cbc-6201-44f4-98ea-eaebb968021a
sum(vec2)

# ╔═╡ e815bcc7-a21e-4831-9d4d-fc7b726aa188
vec22 = Int32[3, 4, 5, 6]

# ╔═╡ 4190b91c-1bd8-4d33-8619-06e6a10447a3
vec_n = Tuple{Int32, String, Symbol}[(2, "Hello", :hi)]

# ╔═╡ 31b41b10-8d48-403f-90cd-8dac74011e49
typeof(vec_n[1][3])

# ╔═╡ 3e57e9d4-4105-440a-8fec-bef05d15caad
vec_n[1]

# ╔═╡ 302c35db-eb30-4e20-9b36-48d0201f640a
push!(vec_n, (4, "Ciao", :ok))

# ╔═╡ 204e6269-85ce-4d34-bd7d-1b55d24a91b2
length(vec_n)

# ╔═╡ 9a8a555b-6ce2-42d2-affe-b733f6f629be
my_arr = Array{Float64}(undef, 2, 2)

# ╔═╡ fe6f5ddb-6a51-4f62-aa93-45b0b96d585a
size(my_arr)

# ╔═╡ ccd7d073-d4ab-458b-8fa4-568be4bcbecf
length(my_arr)

# ╔═╡ 9ebf1828-c191-4af4-9b80-9a8120a5324e
def_arr1 = zeros(2, 2)

# ╔═╡ 9aa319bd-ccff-47ee-b0d4-41c5a5db1624
def_arr2 = ones(2, 2)

# ╔═╡ 263241a8-8c6c-4c21-9abd-ee6206f66f46
fill(false, 2, 2)

# ╔═╡ 359993f3-173a-40c5-8c94-665cf2089014
my_arr2 = [0.1 0.4; 0.6 0.8]

# ╔═╡ 853755db-cc63-40ce-9fd7-622e4741cc48
mat1 = hcat([1,2,3], [5, 6,7])

# ╔═╡ 8a59512b-5e9e-4732-9ef8-f9800c19c2d2
rand(2,2)

# ╔═╡ 9f7d8f22-8912-4feb-9f0a-52957fe9915f


# ╔═╡ adf8acac-a8a7-4ed4-883f-74aad44bb58d
typeof(mat1)

# ╔═╡ 5fcace29-1a3b-49c5-ac28-dc0b9ef4aeeb
arr3 = vcat([1,2,3], [7, 8 ,9])

# ╔═╡ 65ca905a-e756-4ef1-a7fb-db561f9c6b3d
hcat(my_arr2, [0.5,0.5])

# ╔═╡ 0007fc58-2fde-435e-923f-f9b795715656
my_arr2

# ╔═╡ 31824f05-598d-422f-8b5f-046bd2285fec
r1 = 1:2:20

# ╔═╡ d86d64b7-faba-40b5-bb0a-37782e417c50
typeof(4:2:21)

# ╔═╡ 17814e09-4701-4516-b4fd-551c7c8d2128
collect(20:-2:1)

# ╔═╡ ed3a0666-9505-489f-a475-2f4f84277825
collect(1:5:19)

# ╔═╡ 94f1307f-c976-4530-9e47-4e6a3e42eaec
collect(r1)

# ╔═╡ 3542ffc6-9b9e-4f3f-9a71-9bd4ecd6dea9
typeof(1:20)

# ╔═╡ 966b8a05-99e0-43ce-bcae-c2503899439c
collect(1:20)

# ╔═╡ bc14a915-fac4-467f-9079-09fc789a9243
vec5 = collect(r1)

# ╔═╡ e1914a3c-2705-4474-b929-6de1eb759200
vec5[begin:4]

# ╔═╡ b8f7789f-98c4-4d48-98da-9f77d3b53e53
vec5[5:(end -1)]

# ╔═╡ 178a5cd6-1cb6-44ef-85cf-713182ac6f7d
vec5[4:8]

# ╔═╡ 2f426d32-7e8e-4852-ba3e-b13720c196a8
v2 = Set([1,1,3,4,5,6,6])

# ╔═╡ 7a0e3a92-8e50-420e-b525-f6e4942d24d1
2 ∈ v2

# ╔═╡ aabe2473-14c2-4426-9ebd-477773e971af
v3 = SortedSet([1,9,8,7])

# ╔═╡ 143e9117-54e2-4f60-bdb2-f0c2a3e9db84
push!(v3, 3)

# ╔═╡ 46f3c084-c7cf-4559-aab0-55d3c3505da6
struct Student
        name::String
        year::Int64
        subjects::Array{String, 1}
end

# ╔═╡ c48d5315-079f-489c-81fd-c3daf328ec59
st1 = Student("Peter Malbec", 2, ["Algebra", "ML", "Algorithm", "Data Structures"])

# ╔═╡ e5c1ee45-266d-48a1-960f-a659dd9b8190
st1.name

# ╔═╡ a347aaf7-62b3-4b9f-a78a-c36d4a773167
push!(st1.subjects, "Art")

# ╔═╡ 4dce0257-1c42-4fa7-b761-aa0cf8ad5dc1
st1.subjects = ["Topic1", "Topic2"]

# ╔═╡ 1b745051-5c0f-4ebf-9b08-de9cebb87c03
st1.hobby

# ╔═╡ 695d70ed-22e8-4cf1-a980-629005e008d3
st1.name = "John"

# ╔═╡ 3a717788-a6a6-4f4f-8825-c9290a7a50b7
mutable struct Member
        the_student::Student
        group::Union{Nothing, Int64}
end

# ╔═╡ ecf37e05-229c-4e14-99bf-0b4140eae34d
m1 = Member(Student("Gerarld Pawn", 4, ["Music", "Art"]), nothing)

# ╔═╡ 9fec0bcf-162d-4201-ad32-89ac3d79d825
m1.group = 4

# ╔═╡ 6614bd1b-4c3b-4212-99c0-2de0b06798b3
m1

# ╔═╡ 30e4e06e-3f1f-4a60-a011-6e64f4ceb328
d1 = Dict{Student, Int32}()

# ╔═╡ ad5cd675-3910-48e3-a0a7-4d8deb8f814c
student1 = Student("Emmanuel Dargne", 2, ["Calculus", "Advanced Logic", "Algorithm 2", "Data Structures"])

# ╔═╡ 30acaf11-4e38-4544-855a-29b054a3ffa8
push!(d1, student1 => 1)

# ╔═╡ 36d35a05-4888-46e9-9315-40e7eca02da5
length(d1)

# ╔═╡ 5791ba42-d486-467a-98df-80c64f1258f7
d1[student1]

# ╔═╡ 40593a01-59fd-496d-bd51-3e6d17e6c252
d2 = Dict{Member, String}()

# ╔═╡ ab0d033e-b692-46ff-935a-fd00d2b49ad8
Base.isequal(m1::Member, m2::Member) = isequal(m1.group, m2.group)

# ╔═╡ 587914e4-a333-4ae1-a4f4-4a6316934cb3
Base.hash(m::Member, h::UInt) = hash(m.group, h)

# ╔═╡ 6b2bc55b-f96e-4750-b326-e1b12d939824


# ╔═╡ b266ff79-1496-4f77-bc15-cc27ce31bc62
member2 = Member(student1, 5)

# ╔═╡ f94dcb95-1993-4ca1-bb3f-fe8bf771526a
push!(d2, member2 => "First member")

# ╔═╡ e22faded-f34e-4699-b188-f3c4e71909aa
d2[member2]

# ╔═╡ ba1f073e-b7ba-4cc2-b18b-f62cc6c6119e
member3 = Member(Student("Erol Wong", 3, ["Philosophy", "Literature"]), 5)

# ╔═╡ 12b0f5d3-bc56-4157-a231-953f67ec9e33
push!(d2, member3 => "Second member")

# ╔═╡ c134228e-fa1b-47b6-a9d6-1c49c9f280b4
length(d2)

# ╔═╡ faceec7f-cde5-418f-9b57-9a83f6fe93f6
d2[member2]

# ╔═╡ 1faa6854-833f-401c-a5da-a6347e0ee1ad
d2[member3]

# ╔═╡ 4b3df760-96d3-459a-b168-19c617971d38
struct VARWorkload
        id::Symbol
        req::Symbol
end

# ╔═╡ e1c017b4-957e-4985-8c23-de6799ed4a9a
mutable struct VARNode
        state::Tuple{VARWorkload, Symbol}
        wl_count::Int
        reward::Float64
        alloc_history::Dict{VARWorkload, Symbol}
        parent::Union{Nothing,VARNode}
end

# ╔═╡ f15128cb-d562-4628-8cd0-3fdef4b43ae8
function Base.isequal(n1::VARNode, n2::VARNode)
        st1 = n1.state
        st2 = n2.state
        return st1[1] == st2[1] && st1[2] == st2[2]
end

# ╔═╡ 5cb19072-5bf2-437a-b61f-2b268eb9c00c
function Base.hash(n::VARNode, h::UInt)
        st = n.state 
        n_wl = st[1]
    return Base.hash(n_wl.id, Base.hash(n.wl_count, h))
end

# ╔═╡ b0ac2f0b-bd6d-4b56-8860-6509bc0ce1c7
struct PStudent{T}
	name::String
	f::T
end

# ╔═╡ 1cf18d6a-0140-4273-942f-0c8c8137ea00
ps1 = PStudent{Float64}("James", 4.5)

# ╔═╡ a069cde2-8008-4864-8364-413183a0fc1e
ps2 = PStudent{String}("Bob", "Uni")

# ╔═╡ d53a6a22-aba7-43cf-b3d6-50eec66a45ab
ps3 = PStudent{Int64}("Renne", 4)

# ╔═╡ b17257b6-669e-42e8-8f57-8fece8e0d5e4
struct PStudent2{T <: Real}
	name::String
	val::T
end

# ╔═╡ 755784a9-019d-4fa1-ac25-e5e6321171b1
ps4 = PStudent2{Int32}("Colen", 5)

# ╔═╡ a27df6b8-d678-4c27-97fe-ff4cfb0516e2


# ╔═╡ 3355f9fb-b586-4531-a489-20a357654806
md"## Control Flow"

# ╔═╡ 18e455e7-5e9c-4ae6-bbdf-4ac0d9a02952
begin
        the_counter = 1
        while the_counter <= length(vec2)
                println(vec2[the_counter])
                the_counter += 1
        end
end

# ╔═╡ 5e732a57-9c3f-4fa9-876f-231e17ec8b06
for inner_elt in vec2
        println(inner_elt)
end

# ╔═╡ 2ec549a0-d356-4d6c-833d-cb02e8524c0b
for ind_v in 1:length(vec2)
        println(vec2[ind_v])
end

# ╔═╡ 65f4b028-61ac-42f1-87e9-eb9e3f80b9a3
@inbounds for ind_v2 in eachindex(vec2)
	println(vec2[ind_v2])
end

# ╔═╡ 3b4e0a62-96d6-41e4-a420-912d609f08f3
if vec2[1] > 3
        println("first element greater than 3")
elseif vec2[2] > 5
        println("second element greater than 5")
else
        println("none of these conditions holds")
end

# ╔═╡ e098c690-f84a-4a21-8ed4-f37871ea0550
vec2[1] > 5 ? println("first element greater than 5") : println("first element less than 5")

# ╔═╡ ee6e159f-002f-408a-b06c-9d123143ba1d
vec4 = vec2 .+ 1

# ╔═╡ 380157ca-f4aa-4fc6-bf30-fa11f6720552
begin
	let x = 5
		for i in 1:10
			x=i
		end
		x
	end
end

# ╔═╡ ed520235-d007-40ac-b952-2c635b6feba1
[i^2 for i in 3:7 if isodd(i)]

# ╔═╡ b6453142-4bcb-4d90-9d5c-24fa65ab3aee
[i * j for i in 1:5, j in 1:7]

# ╔═╡ 3711f779-3b08-46ca-9572-ef7c0c593da6
map(x -> x^2, vec4)

# ╔═╡ 35d77366-0702-43d4-ab56-c574834c60a6
filter(x -> iseven(x), vec4)

# ╔═╡ d5afc062-5794-4e1a-856b-147ebaa71d67
md"## Functions"

# ╔═╡ 18dc9a0a-334b-41e3-94ed-5a2e1a5804c2
function greetings(name::String)
        first_part = "Hello "
        return first_part * name * ":-)"
end

# ╔═╡ 5380db3d-621d-49dc-86d5-573179558868
function greetings(val::Int64)
	return val + 4
end

# ╔═╡ 13369048-fed2-4fc1-8a45-1969c646aa43


# ╔═╡ b1174cab-cdfa-4dd3-b59f-9a72a9c912df
greetings("Paul")

# ╔═╡ c188c007-53d4-4525-aa8a-3fcd1e875a1a
greetings(4)

# ╔═╡ f668ecbe-23f0-489a-bfb2-d22120172bcb
@btime(greetings("Liam"))

# ╔═╡ a8af6868-90c4-4026-910d-dd505f331070
@benchmark greetings(50)

# ╔═╡ d5efd9d5-bcc7-4034-ad83-4cb51502ffba


# ╔═╡ a5cf8924-427f-453c-95a9-40d7df2455ff
muller = x -> x^2

# ╔═╡ 489cba22-e38c-4fff-bd0d-f728c14a7d0d
muller(4)

# ╔═╡ f4139fdd-0d59-43ca-9654-4d86f2d122f0
(x -> x^3)(3)

# ╔═╡ 29a1b0af-dd79-4167-aeb4-8e69ff7b3603
muller(vec2)

# ╔═╡ 899696d1-f805-4c2b-b006-42a5a16a00e5
muller.(vec2)

# ╔═╡ 02e3f860-3a47-4e57-b246-c32f2db61537
st_name(st::Student) = st.name

# ╔═╡ f44b6ef0-3efe-48cd-b54d-86c0008d5ebe
year_of_study(st::Student) = st.year

# ╔═╡ 38cbf5f8-39bf-40b7-8b65-92d193b00f6e
function subject(st::Student, s_ind)
        if s_ind > length(st.subjects)
                return "No subject at index $(s_ind)"
        else
                return st.subjects[s_ind]
        end
end

# ╔═╡ 53f75c9c-3894-4d21-b686-e63be11cca46
st_name(st1)

# ╔═╡ 7ff4a1f2-b92d-4a61-a6e7-f3fd667d6b19
year_of_study(st1)

# ╔═╡ a98da553-0174-4bde-938c-a0b89db13c7b
subject(st1, 3)

# ╔═╡ fd036cc3-561b-424f-99fe-c8250328a250
subject(st1, 5)

# ╔═╡ 1e041747-6cb0-426a-9a5e-ae382e262356
md"## I/O"

# ╔═╡ 5292a470-7ca6-4da6-a0da-7d6dee290256
open("essai.txt") do f
  line = 0   
  while ! eof(f)  
     s = readline(f)          
     line += 1
     println("$line . $s")
  end
end

# ╔═╡ 6732d63e-9096-49d7-a50d-6bde507235ba
open("essai2.txt", "w") do io
    write(io, "Game Theory session!")
    println(io, " New line to file.")
end

# ╔═╡ f20cbad5-26b7-4b73-bdf8-b8bec9453628
data = TOML.parsefile("tomleg.toml")

# ╔═╡ 4858abb5-ccbf-4945-ad7a-527b6d6fbeb7
println(data["name"])

# ╔═╡ 14e7edfe-4616-4241-810c-e2685edee697
println(data["compat"]["julia"])

# ╔═╡ 6e234afd-c12e-47d6-9642-43c79f20a3f0


# ╔═╡ 9b59c5bb-8c22-46fc-b571-1b32eb390226
md"## Game Theory Example"

# ╔═╡ 371a8358-91d9-4a2c-8eb3-fbdaaa6b2ccc
player1 = Player([3 1; 0 2])

# ╔═╡ 842c416c-4140-44aa-aca5-9c78bae2ccde
player2 = Player([2 0; 1 3])

# ╔═╡ 4834b7a4-bf3a-4f24-ab0d-16150679b3ec
g1 = NormalFormGame((player1, player2))

# ╔═╡ 3624872a-d4d9-4c42-8478-26d2f03af2b8
println(g1)

# ╔═╡ 484cb38f-2e5e-4899-b936-23210c83992c
pure_nash(g1)

# ╔═╡ ae5fe01a-8209-4ac1-9fd9-418d81700867
bimatrix_g2 = Array{Int}(undef, 2, 2, 2)

# ╔═╡ 1dfa1dad-d890-4559-b5c9-9f8ff5cba5c8
bimatrix_g2[1, 1, :] = [3, 2]

# ╔═╡ 49ea583c-be6f-41f8-8d34-daec8245444c
bimatrix_g2[1, 2, :] = [1, 1]

# ╔═╡ fa0c1b44-40d1-4796-a300-f68bd3189e42
bimatrix_g2[2, 1, :] = [0, 0]

# ╔═╡ a73b9f54-0d62-4285-bece-22a2a3d7b6e1
bimatrix_g2[2, 2, :] = [2, 3]

# ╔═╡ 2e53930d-367b-4ddd-8c0c-052b17f5028f
g2 = NormalFormGame(bimatrix_g2)

# ╔═╡ c136fcd7-e9d0-47c6-afb0-c55275852cc1
pure_nash(g2)

# ╔═╡ 505fa378-b76f-485c-aebc-941693cf652d
md"## Solve System of Linear Equations"

# ╔═╡ 24520f93-2bc7-44e5-be45-5da8ed2897c4
A1 = [4 2; 1 3]

# ╔═╡ 753ab3ea-e1c4-4f89-9ac6-dd3608984d6f
B1 = [1,4]

# ╔═╡ a97464c1-3a99-4d4f-9c2f-4bf7af369786
A1 \ B1

# ╔═╡ bf48a76f-0af0-4c77-9e00-b874e010c53d


# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
BenchmarkTools = "6e4b80f9-dd63-53aa-95a3-0cdb28fa8baf"
DataStructures = "864edb3b-99cc-5e75-8d2d-829cb0a9cfe8"
GameTheory = "64a4ffa8-f47c-4a47-8dad-aee7aadc3b51"
LinearAlgebra = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
TOML = "fa267f1f-6049-4f14-aa54-33bafae1ed76"

[compat]
BenchmarkTools = "~1.8.0"
DataStructures = "~0.19.4"
GameTheory = "~0.5.0"
PlutoUI = "~0.7.58"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.12.6"
manifest_format = "2.0"
project_hash = "e86376e47411bb59409ac2c436917cf5238e998b"

[[deps.ADTypes]]
git-tree-sha1 = "f7304359109c768cf32dc5fa2d371565bb63b68a"
uuid = "47edcb42-4c32-4615-8424-f2b9edc5f35b"
version = "1.21.0"

    [deps.ADTypes.extensions]
    ADTypesChainRulesCoreExt = "ChainRulesCore"
    ADTypesConstructionBaseExt = "ConstructionBase"
    ADTypesEnzymeCoreExt = "EnzymeCore"

    [deps.ADTypes.weakdeps]
    ChainRulesCore = "d360d2e6-b24c-11e9-a2a3-2a2ae2dbcce4"
    ConstructionBase = "187b0558-2788-49d3-abe0-74a17ed4e7c9"
    EnzymeCore = "f151be2c-9106-41f4-ab19-57ee4f262869"

[[deps.AbstractFFTs]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "d92ad398961a3ed262d8bf04a1a2b8340f915fef"
uuid = "621f4979-c628-5d54-868e-fcf4e3e8185c"
version = "1.5.0"

    [deps.AbstractFFTs.extensions]
    AbstractFFTsChainRulesCoreExt = "ChainRulesCore"
    AbstractFFTsTestExt = "Test"

    [deps.AbstractFFTs.weakdeps]
    ChainRulesCore = "d360d2e6-b24c-11e9-a2a3-2a2ae2dbcce4"
    Test = "8dfed614-e22c-5e08-85e1-65c5234f0b40"

[[deps.AbstractLattices]]
git-tree-sha1 = "763b6f3f6bfabd72c7e262cbb5ddfd43fd5c6398"
uuid = "398f06c4-4d28-53ec-89ca-5b2656b7603d"
version = "0.3.1"

[[deps.AbstractPlutoDingetjes]]
deps = ["Pkg"]
git-tree-sha1 = "6e1d2a35f2f90a4bc7c2ed98079b2ba09c35b83a"
uuid = "6e696c72-6542-2067-7265-42206c756150"
version = "1.3.2"

[[deps.Adapt]]
deps = ["LinearAlgebra", "Requires"]
git-tree-sha1 = "0761717147821d696c9470a7a86364b2fbd22fd8"
uuid = "79e6a3ab-5dfb-504d-930d-738a2a938a0e"
version = "4.5.2"
weakdeps = ["SparseArrays", "StaticArrays"]

    [deps.Adapt.extensions]
    AdaptSparseArraysExt = "SparseArrays"
    AdaptStaticArraysExt = "StaticArrays"

[[deps.AliasTables]]
deps = ["PtrArrays", "Random"]
git-tree-sha1 = "9876e1e164b144ca45e9e3198d0b689cadfed9ff"
uuid = "66dad0bd-aa9a-41b7-9441-69ab47430ed8"
version = "1.1.3"

[[deps.Arblib]]
deps = ["FLINT_jll", "LinearAlgebra", "Random", "ScopedValues", "Serialization", "SpecialFunctions"]
git-tree-sha1 = "23ad5b959003ceb775e13b6863240910eb356e73"
uuid = "fb37089c-8514-4489-9461-98f9c8763369"
version = "1.7.0"
weakdeps = ["ForwardDiff"]

    [deps.Arblib.extensions]
    ArblibForwardDiffExt = "ForwardDiff"

[[deps.ArgTools]]
uuid = "0dad84c5-d112-42e6-8d28-ef12dabb789f"
version = "1.1.2"

[[deps.ArnoldiMethod]]
deps = ["LinearAlgebra", "Random", "StaticArrays"]
git-tree-sha1 = "d57bd3762d308bded22c3b82d033bff85f6195c6"
uuid = "ec485272-7323-5ecc-a04f-4719b315124d"
version = "0.4.0"

[[deps.ArrayInterface]]
deps = ["Adapt", "LinearAlgebra"]
git-tree-sha1 = "54f895554d05c83e3dd59f6a396671dae8999573"
uuid = "4fba245c-0d91-5ea0-9b3e-6abc04ee57a9"
version = "7.24.0"

    [deps.ArrayInterface.extensions]
    ArrayInterfaceAMDGPUExt = "AMDGPU"
    ArrayInterfaceBandedMatricesExt = "BandedMatrices"
    ArrayInterfaceBlockBandedMatricesExt = "BlockBandedMatrices"
    ArrayInterfaceCUDAExt = "CUDA"
    ArrayInterfaceCUDSSExt = ["CUDSS", "CUDA"]
    ArrayInterfaceChainRulesCoreExt = "ChainRulesCore"
    ArrayInterfaceChainRulesExt = "ChainRules"
    ArrayInterfaceGPUArraysCoreExt = "GPUArraysCore"
    ArrayInterfaceMetalExt = "Metal"
    ArrayInterfaceReverseDiffExt = "ReverseDiff"
    ArrayInterfaceSparseArraysExt = "SparseArrays"
    ArrayInterfaceStaticArraysCoreExt = "StaticArraysCore"
    ArrayInterfaceTrackerExt = "Tracker"

    [deps.ArrayInterface.weakdeps]
    AMDGPU = "21141c5a-9bdb-4563-92ae-f87d6854732e"
    BandedMatrices = "aae01518-5342-5314-be14-df237901396f"
    BlockBandedMatrices = "ffab5731-97b5-5995-9138-79e8c1846df0"
    CUDA = "052768ef-5323-5732-b1bb-66c8b64840ba"
    CUDSS = "45b445bb-4962-46a0-9369-b4df9d0f772e"
    ChainRules = "082447d4-558c-5d27-93f4-14fc19e9eca2"
    ChainRulesCore = "d360d2e6-b24c-11e9-a2a3-2a2ae2dbcce4"
    GPUArraysCore = "46192b85-c4d5-4398-a991-12ede77f4527"
    Metal = "dde4c033-4e86-420c-a63e-0dd931031962"
    ReverseDiff = "37e2e3b7-166d-5795-8a7a-e32c996b4267"
    SparseArrays = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"
    StaticArraysCore = "1e83bf80-4336-4d27-bf5d-d5a4f845583c"
    Tracker = "9f7883ad-71c0-57eb-9f7f-b5c9e6d3789c"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"
version = "1.11.0"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"
version = "1.11.0"

[[deps.BenchmarkTools]]
deps = ["Compat", "JSON", "Logging", "PrecompileTools", "Printf", "Profile", "Statistics", "UUIDs"]
git-tree-sha1 = "9670d3febc2b6da60a0ae57846ba74670290653f"
uuid = "6e4b80f9-dd63-53aa-95a3-0cdb28fa8baf"
version = "1.8.0"

[[deps.Bessels]]
git-tree-sha1 = "4435559dc39793d53a9e3d278e185e920b4619ef"
uuid = "0e736298-9ec6-45e8-9647-e4fc86a2fe38"
version = "0.2.8"

[[deps.BitTwiddlingConvenienceFunctions]]
deps = ["Static"]
git-tree-sha1 = "f21cfd4950cb9f0587d5067e69405ad2acd27b87"
uuid = "62783981-4cbd-42fc-bca8-16325de8dc4b"
version = "0.1.6"

[[deps.Bzip2_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "1b96ea4a01afe0ea4090c5c8039690672dd13f2e"
uuid = "6e34b625-4abd-537c-b88f-471c36dfa7a0"
version = "1.0.9+0"

[[deps.CDDLib]]
deps = ["LinearAlgebra", "MathOptInterface", "Polyhedra", "SparseArrays", "cddlib_jll"]
git-tree-sha1 = "bfd243c836ce98efac1a4b79fdfd1508189d143f"
uuid = "3391f64e-dcde-5f30-b752-e11513730f60"
version = "0.10.2"

[[deps.CEnum]]
git-tree-sha1 = "389ad5c84de1ae7cf0e28e381131c98ea87d54fc"
uuid = "fa961155-64e5-5f13-b03f-caf6b980ea82"
version = "0.5.0"

[[deps.CPUSummary]]
deps = ["CpuId", "IfElse", "PrecompileTools", "Preferences", "Static"]
git-tree-sha1 = "f3a21d7fc84ba618a779d1ed2fcca2e682865bab"
uuid = "2a0fbf3d-bb9c-48f3-b0a9-814d99fd7ab9"
version = "0.2.7"

[[deps.CloseOpenIntervals]]
deps = ["Static", "StaticArrayInterface"]
git-tree-sha1 = "05ba0d07cd4fd8b7a39541e31a7b0254704ea581"
uuid = "fb6a15b2-703c-40df-9091-08a04967cfa9"
version = "0.1.13"

[[deps.Clp]]
deps = ["Clp_jll", "LinearAlgebra", "MathOptInterface", "OpenBLAS32_jll", "PrecompileTools"]
git-tree-sha1 = "0b85097cb0d08ea95effae7f58455d0f8cb33eb1"
uuid = "e2554f3b-3117-50c0-817c-e040a3ddf72d"
version = "1.3.0"

[[deps.Clp_jll]]
deps = ["Artifacts", "CoinUtils_jll", "CompilerSupportLibraries_jll", "JLLWrappers", "Libdl", "METIS_jll", "MUMPS_seq_jll", "Osi_jll", "libblastrampoline_jll"]
git-tree-sha1 = "341bae15d4036af465aa41650547b2829308ad95"
uuid = "06985876-5285-5a41-9fcb-8948a742cc53"
version = "100.1700.1000+1"

[[deps.CodecBzip2]]
deps = ["Bzip2_jll", "TranscodingStreams"]
git-tree-sha1 = "84990fa864b7f2b4901901ca12736e45ee79068c"
uuid = "523fee87-0ab8-5b00-afb7-3ecf72e48cfd"
version = "0.8.5"

[[deps.CodecZlib]]
deps = ["TranscodingStreams", "Zlib_jll"]
git-tree-sha1 = "962834c22b66e32aa10f7611c08c8ca4e20749a9"
uuid = "944b1d66-785c-5afd-91f1-9de20f533193"
version = "0.7.8"

[[deps.CoinUtils_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "JLLWrappers", "Libdl", "libblastrampoline_jll"]
git-tree-sha1 = "db9575b900876ab5067dcface16dca5bca0e93c4"
uuid = "be027038-0da8-5614-b30d-e42594cb92df"
version = "200.1100.1200+0"

[[deps.ColorTypes]]
deps = ["FixedPointNumbers", "Random"]
git-tree-sha1 = "b10d0b65641d57b8b4d5e234446582de5047050d"
uuid = "3da002f7-5984-5a60-b8a6-cbb66c0b333f"
version = "0.11.5"

[[deps.Combinatorics]]
git-tree-sha1 = "c761b00e7755700f9cdf5b02039939d1359330e1"
uuid = "861a8166-3701-5b0c-9a16-15d98fcdc6aa"
version = "1.1.0"

[[deps.CommonSolve]]
git-tree-sha1 = "78ea4ddbcf9c241827e7035c3a03e2e456711470"
uuid = "38540f10-b2f7-11e9-35d8-d573e4eb0ff2"
version = "0.2.6"

[[deps.CommonSubexpressions]]
deps = ["MacroTools"]
git-tree-sha1 = "cda2cfaebb4be89c9084adaca7dd7333369715c5"
uuid = "bbf7d656-a473-5ed7-a52c-81e309532950"
version = "0.3.1"

[[deps.CommonWorldInvalidations]]
git-tree-sha1 = "ae52d1c52048455e85a387fbee9be553ec2b68d0"
uuid = "f70d9fcc-98c5-4d4a-abd7-e4cdeebd8ca8"
version = "1.0.0"

[[deps.Compat]]
deps = ["TOML", "UUIDs"]
git-tree-sha1 = "9d8a54ce4b17aa5bdce0ea5c34bc5e7c340d16ad"
uuid = "34da2185-b29b-5c13-b0c7-acf172513d20"
version = "4.18.1"
weakdeps = ["Dates", "LinearAlgebra"]

    [deps.Compat.extensions]
    CompatLinearAlgebraExt = "LinearAlgebra"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"
version = "1.3.0+1"

[[deps.ConstructionBase]]
git-tree-sha1 = "b4b092499347b18a015186eae3042f72267106cb"
uuid = "187b0558-2788-49d3-abe0-74a17ed4e7c9"
version = "1.6.0"

    [deps.ConstructionBase.extensions]
    ConstructionBaseIntervalSetsExt = "IntervalSets"
    ConstructionBaseLinearAlgebraExt = "LinearAlgebra"
    ConstructionBaseStaticArraysExt = "StaticArrays"

    [deps.ConstructionBase.weakdeps]
    IntervalSets = "8197267c-284f-5f27-9208-e0e47529a953"
    LinearAlgebra = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"
    StaticArrays = "90137ffa-7385-5640-81b9-e52037218182"

[[deps.CpuId]]
deps = ["Markdown"]
git-tree-sha1 = "fcbb72b032692610bfbdb15018ac16a36cf2e406"
uuid = "adafc99b-e345-5852-983c-f28acb93d879"
version = "0.3.1"

[[deps.Crayons]]
git-tree-sha1 = "249fe38abf76d48563e2f4556bebd215aa317e15"
uuid = "a8cc5b0e-0ffa-5ad4-8c14-923d3ee1735f"
version = "4.1.1"

[[deps.DSP]]
deps = ["Bessels", "FFTW", "IterTools", "LinearAlgebra", "Polynomials", "Random", "Reexport", "SpecialFunctions", "Statistics"]
git-tree-sha1 = "5989debfc3b38f736e69724818210c67ffee4352"
uuid = "717857b8-e6f2-59f4-9121-6e50c889abd2"
version = "0.8.4"
weakdeps = ["OffsetArrays"]

    [deps.DSP.extensions]
    OffsetArraysExt = "OffsetArrays"

[[deps.DataAPI]]
git-tree-sha1 = "abe83f3a2f1b857aac70ef8b269080af17764bbe"
uuid = "9a962f9c-6df0-11e9-0e5d-c546b8b5ee8a"
version = "1.16.0"

[[deps.DataStructures]]
deps = ["OrderedCollections"]
git-tree-sha1 = "e86f4a2805f7f19bec5129bc9150c38208e5dc23"
uuid = "864edb3b-99cc-5e75-8d2d-829cb0a9cfe8"
version = "0.19.4"

[[deps.DataValueInterfaces]]
git-tree-sha1 = "bfc1187b79289637fa0ef6d4436ebdfe6905cbd6"
uuid = "e2d170a0-9d28-54be-80f0-106bbe20a464"
version = "1.0.0"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"
version = "1.11.0"

[[deps.DelimitedFiles]]
deps = ["Mmap"]
git-tree-sha1 = "9e2f36d3c96a820c678f2f1f1782582fcf685bae"
uuid = "8bb1440f-4735-579b-a4ab-409b98df4dab"
version = "1.9.1"

[[deps.DiffResults]]
deps = ["StaticArraysCore"]
git-tree-sha1 = "782dd5f4561f5d267313f23853baaaa4c52ea621"
uuid = "163ba53b-c6d8-5494-b064-1a9d43ac40c5"
version = "1.1.0"

[[deps.DiffRules]]
deps = ["IrrationalConstants", "LogExpFunctions", "NaNMath", "Random", "SpecialFunctions"]
git-tree-sha1 = "23163d55f885173722d1e4cf0f6110cdbaf7e272"
uuid = "b552c78f-8df3-52c6-915a-8e097449b14b"
version = "1.15.1"

[[deps.DifferentiationInterface]]
deps = ["ADTypes", "LinearAlgebra"]
git-tree-sha1 = "7ae99144ea44715402c6c882bfef2adbeadbc4ce"
uuid = "a0c0ee7d-e4b9-4e03-894e-1c5f64a51d63"
version = "0.7.16"

    [deps.DifferentiationInterface.extensions]
    DifferentiationInterfaceChainRulesCoreExt = "ChainRulesCore"
    DifferentiationInterfaceDiffractorExt = "Diffractor"
    DifferentiationInterfaceEnzymeExt = ["EnzymeCore", "Enzyme"]
    DifferentiationInterfaceFastDifferentiationExt = "FastDifferentiation"
    DifferentiationInterfaceFiniteDiffExt = "FiniteDiff"
    DifferentiationInterfaceFiniteDifferencesExt = "FiniteDifferences"
    DifferentiationInterfaceForwardDiffExt = ["ForwardDiff", "DiffResults"]
    DifferentiationInterfaceGPUArraysCoreExt = "GPUArraysCore"
    DifferentiationInterfaceGTPSAExt = "GTPSA"
    DifferentiationInterfaceMooncakeExt = "Mooncake"
    DifferentiationInterfacePolyesterForwardDiffExt = ["PolyesterForwardDiff", "ForwardDiff", "DiffResults"]
    DifferentiationInterfaceReverseDiffExt = ["ReverseDiff", "DiffResults"]
    DifferentiationInterfaceSparseArraysExt = "SparseArrays"
    DifferentiationInterfaceSparseConnectivityTracerExt = "SparseConnectivityTracer"
    DifferentiationInterfaceSparseMatrixColoringsExt = "SparseMatrixColorings"
    DifferentiationInterfaceStaticArraysExt = "StaticArrays"
    DifferentiationInterfaceSymbolicsExt = "Symbolics"
    DifferentiationInterfaceTrackerExt = "Tracker"
    DifferentiationInterfaceZygoteExt = ["Zygote", "ForwardDiff"]

    [deps.DifferentiationInterface.weakdeps]
    ChainRulesCore = "d360d2e6-b24c-11e9-a2a3-2a2ae2dbcce4"
    DiffResults = "163ba53b-c6d8-5494-b064-1a9d43ac40c5"
    Diffractor = "9f5e2b26-1114-432f-b630-d3fe2085c51c"
    Enzyme = "7da242da-08ed-463a-9acd-ee780be4f1d9"
    EnzymeCore = "f151be2c-9106-41f4-ab19-57ee4f262869"
    FastDifferentiation = "eb9bf01b-bf85-4b60-bf87-ee5de06c00be"
    FiniteDiff = "6a86dc24-6348-571c-b903-95158fe2bd41"
    FiniteDifferences = "26cc04aa-876d-5657-8c51-4c34ba976000"
    ForwardDiff = "f6369f11-7733-5829-9624-2563aa707210"
    GPUArraysCore = "46192b85-c4d5-4398-a991-12ede77f4527"
    GTPSA = "b27dd330-f138-47c5-815b-40db9dd9b6e8"
    Mooncake = "da2b9cff-9c12-43a0-ae48-6db2b0edb7d6"
    PolyesterForwardDiff = "98d1487c-24ca-40b6-b7ab-df2af84e126b"
    ReverseDiff = "37e2e3b7-166d-5795-8a7a-e32c996b4267"
    SparseArrays = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"
    SparseConnectivityTracer = "9f842d2f-2579-4b1d-911e-f412cf18a3f5"
    SparseMatrixColorings = "0a514795-09f3-496d-8182-132a7b665d35"
    StaticArrays = "90137ffa-7385-5640-81b9-e52037218182"
    Symbolics = "0c5d862f-8b57-4792-8d23-62f2024744c7"
    Tracker = "9f7883ad-71c0-57eb-9f7f-b5c9e6d3789c"
    Zygote = "e88e6eb3-aa80-5325-afca-941959d7151f"

[[deps.Distributed]]
deps = ["Random", "Serialization", "Sockets"]
uuid = "8ba89e20-285c-5b6f-9357-94700520ee1b"
version = "1.11.0"

[[deps.Distributions]]
deps = ["AliasTables", "FillArrays", "LinearAlgebra", "PDMats", "Printf", "QuadGK", "Random", "SpecialFunctions", "Statistics", "StatsAPI", "StatsBase", "StatsFuns"]
git-tree-sha1 = "e421c1938fafab0165b04dc1a9dbe2a26272952c"
uuid = "31c24e10-a181-5473-b8eb-7969acd0382f"
version = "0.25.125"

    [deps.Distributions.extensions]
    DistributionsChainRulesCoreExt = "ChainRulesCore"
    DistributionsDensityInterfaceExt = "DensityInterface"
    DistributionsTestExt = "Test"

    [deps.Distributions.weakdeps]
    ChainRulesCore = "d360d2e6-b24c-11e9-a2a3-2a2ae2dbcce4"
    DensityInterface = "b429d917-457f-4dbc-8f4c-0cc954292b1d"
    Test = "8dfed614-e22c-5e08-85e1-65c5234f0b40"

[[deps.DocStringExtensions]]
git-tree-sha1 = "7442a5dfe1ebb773c29cc2962a8980f47221d76c"
uuid = "ffbed154-4ef7-542d-bbb7-c09d3a79fcae"
version = "0.9.5"

[[deps.Downloads]]
deps = ["ArgTools", "FileWatching", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"
version = "1.7.0"

[[deps.DynamicPolynomials]]
deps = ["LinearAlgebra", "MultivariatePolynomials", "MutableArithmetics", "Reexport", "StarAlgebras", "Test"]
git-tree-sha1 = "5bfabc3827dfdd164359bad6800c115a81280c00"
uuid = "7c1d4256-1411-5781-91ec-d7bc3513ac07"
version = "0.6.6"

[[deps.ElasticArrays]]
deps = ["Adapt"]
git-tree-sha1 = "75e5697f521c9ab89816d3abeea806dfc5afb967"
uuid = "fdbdab4c-e67f-52f5-8c3f-e7b388dad3d4"
version = "1.2.12"

[[deps.EnumX]]
git-tree-sha1 = "c49898e8438c828577f04b92fc9368c388ac783c"
uuid = "4e289a0a-7415-4d19-859d-a7e5c4648b56"
version = "1.0.7"

[[deps.FFTW]]
deps = ["AbstractFFTs", "FFTW_jll", "Libdl", "LinearAlgebra", "MKL_jll", "Preferences", "Reexport"]
git-tree-sha1 = "97f08406df914023af55ade2f843c39e99c5d969"
uuid = "7a1cc6ca-52ef-59f5-83cd-3a7055c09341"
version = "1.10.0"

[[deps.FFTW_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "6d6219a004b8cf1e0b4dbe27a2860b8e04eba0be"
uuid = "f5851436-0d7a-5f13-b9de-f02708fd171a"
version = "3.3.11+0"

[[deps.FLINT_jll]]
deps = ["Artifacts", "GMP_jll", "JLLWrappers", "Libdl", "MPFR_jll", "OpenBLAS32_jll"]
git-tree-sha1 = "b730e276143ad63360611f64243117d00276b632"
uuid = "e134572f-a0d5-539d-bddf-3cad8db41a82"
version = "301.400.1+0"

[[deps.FileWatching]]
uuid = "7b1f6079-737a-58dc-b8bc-7a2ca5c1b5ee"
version = "1.11.0"

[[deps.FillArrays]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "2f979084d1e13948a3352cf64a25df6bd3b4dca3"
uuid = "1a297f60-69ca-5386-bcde-b61e274b549b"
version = "1.16.0"
weakdeps = ["PDMats", "SparseArrays", "StaticArrays", "Statistics"]

    [deps.FillArrays.extensions]
    FillArraysPDMatsExt = "PDMats"
    FillArraysSparseArraysExt = "SparseArrays"
    FillArraysStaticArraysExt = "StaticArrays"
    FillArraysStatisticsExt = "Statistics"

[[deps.FiniteDiff]]
deps = ["ArrayInterface", "LinearAlgebra", "Setfield"]
git-tree-sha1 = "73e879af0e767bd6dfade7c5b09d7b05657a8284"
uuid = "6a86dc24-6348-571c-b903-95158fe2bd41"
version = "2.30.0"

    [deps.FiniteDiff.extensions]
    FiniteDiffBandedMatricesExt = "BandedMatrices"
    FiniteDiffBlockBandedMatricesExt = "BlockBandedMatrices"
    FiniteDiffSparseArraysExt = "SparseArrays"
    FiniteDiffStaticArraysExt = "StaticArrays"

    [deps.FiniteDiff.weakdeps]
    BandedMatrices = "aae01518-5342-5314-be14-df237901396f"
    BlockBandedMatrices = "ffab5731-97b5-5995-9138-79e8c1846df0"
    SparseArrays = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"
    StaticArrays = "90137ffa-7385-5640-81b9-e52037218182"

[[deps.FixedPointNumbers]]
deps = ["Statistics"]
git-tree-sha1 = "05882d6995ae5c12bb5f36dd2ed3f61c98cbb172"
uuid = "53c48c17-4a7d-5ca2-90c5-79b7896eea93"
version = "0.8.5"

[[deps.ForwardDiff]]
deps = ["CommonSubexpressions", "DiffResults", "DiffRules", "LinearAlgebra", "LogExpFunctions", "NaNMath", "Preferences", "Printf", "Random", "SpecialFunctions"]
git-tree-sha1 = "cddeab6487248a39dae1a960fff0ac17b2a28888"
uuid = "f6369f11-7733-5829-9624-2563aa707210"
version = "1.3.3"
weakdeps = ["StaticArrays"]

    [deps.ForwardDiff.extensions]
    ForwardDiffStaticArraysExt = "StaticArrays"

[[deps.Future]]
deps = ["Random"]
uuid = "9fa8497b-333b-5362-9e8d-4d0656e87820"
version = "1.11.0"

[[deps.GMP_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "781609d7-10c4-51f6-84f2-b8444358ff6d"
version = "6.3.0+2"

[[deps.GameTheory]]
deps = ["CDDLib", "Clp", "Combinatorics", "Distributions", "Graphs", "HomotopyContinuation", "LRSLib", "LinearAlgebra", "MathOptInterface", "Parameters", "Polyhedra", "QuantEcon", "Random", "SparseArrays", "StatsBase"]
git-tree-sha1 = "d6f34c0ac6390d8ddd294d4922870b8dc3362238"
uuid = "64a4ffa8-f47c-4a47-8dad-aee7aadc3b51"
version = "0.5.0"

[[deps.GenericLinearAlgebra]]
deps = ["LinearAlgebra", "Printf", "Random", "libblastrampoline_jll"]
git-tree-sha1 = "fc6236b7fbc40bc283e0dc5a84ead1169a6d7dda"
uuid = "14197337-ba66-59df-a3e3-ca00e7dcff7a"
version = "0.3.19"

[[deps.Graphs]]
deps = ["ArnoldiMethod", "DataStructures", "Inflate", "LinearAlgebra", "Random", "SimpleTraits", "SparseArrays", "Statistics"]
git-tree-sha1 = "7eb45fe833a5b7c51cf6d89c5a841d5967e44be3"
uuid = "86223c79-3864-5bf0-83f7-82e725a168b6"
version = "1.14.0"

    [deps.Graphs.extensions]
    GraphsSharedArraysExt = "SharedArrays"

    [deps.Graphs.weakdeps]
    Distributed = "8ba89e20-285c-5b6f-9357-94700520ee1b"
    SharedArrays = "1a1011a3-84de-559e-8e89-a11a2f7dc383"

[[deps.HashArrayMappedTries]]
git-tree-sha1 = "2eaa69a7cab70a52b9687c8bf950a5a93ec895ae"
uuid = "076d061b-32b6-4027-95e0-9a2c6f6d7e74"
version = "0.2.0"

[[deps.HomotopyContinuation]]
deps = ["Arblib", "DelimitedFiles", "DynamicPolynomials", "ElasticArrays", "FiniteDiff", "IntervalTrees", "IterTools", "LRUCache", "LinearAlgebra", "LoopVectorization", "MixedSubdivisions", "MultivariatePolynomials", "Parameters", "PrettyTables", "Printf", "ProgressMeter", "ProjectiveVectors", "Random", "Reexport", "SemialgebraicSets", "SimpleGraphs", "StructArrays", "SymEngine_jll", "TreeViews"]
git-tree-sha1 = "c020aa5b6fb000047fadeeca932de8c687ced01b"
uuid = "f213a82b-91d6-5c5d-acf7-10f1c761b327"
version = "2.18.2"

[[deps.HostCPUFeatures]]
deps = ["BitTwiddlingConvenienceFunctions", "IfElse", "Libdl", "Preferences", "Static"]
git-tree-sha1 = "af9ab7d1f70739a47f03be78771ebda38c3c71bf"
uuid = "3e5b6fbb-0976-4d2c-9146-d79de83f2fb0"
version = "0.1.18"

[[deps.HypergeometricFunctions]]
deps = ["LinearAlgebra", "OpenLibm_jll", "SpecialFunctions"]
git-tree-sha1 = "68c173f4f449de5b438ee67ed0c9c748dc31a2ec"
uuid = "34004b35-14d8-5ef3-9330-4cdb6864b03a"
version = "0.3.28"

[[deps.Hyperscript]]
deps = ["Test"]
git-tree-sha1 = "179267cfa5e712760cd43dcae385d7ea90cc25a4"
uuid = "47d2ed2b-36de-50cf-bf87-49c2cf4b8b91"
version = "0.0.5"

[[deps.HypertextLiteral]]
deps = ["Tricks"]
git-tree-sha1 = "7134810b1afce04bbc1045ca1985fbe81ce17653"
uuid = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"
version = "0.9.5"

[[deps.IOCapture]]
deps = ["Logging", "Random"]
git-tree-sha1 = "b6d6bfdd7ce25b0f9b2f6b3dd56b2673a66c8770"
uuid = "b5f81e59-6552-4d32-b1f0-c071b021bf89"
version = "0.2.5"

[[deps.IfElse]]
git-tree-sha1 = "debdd00ffef04665ccbb3e150747a77560e8fad1"
uuid = "615f187c-cbe4-4ef1-ba3b-2fcf58d6d173"
version = "0.1.1"

[[deps.Inflate]]
git-tree-sha1 = "d1b1b796e47d94588b3757fe84fbf65a5ec4a80d"
uuid = "d25df0c9-e2be-5dd7-82c8-3ad0b3e990b9"
version = "0.1.5"

[[deps.IntegerMathUtils]]
git-tree-sha1 = "4c1acff2dc6b6967e7e750633c50bc3b8d83e617"
uuid = "18e54dd8-cb9d-406c-a71d-865a43cbb235"
version = "0.1.3"

[[deps.IntelOpenMP_jll]]
deps = ["Artifacts", "JLLWrappers", "LazyArtifacts", "Libdl"]
git-tree-sha1 = "ec1debd61c300961f98064cfb21287613ad7f303"
uuid = "1d5cc7b8-4909-519e-a0f8-d0f5ad9712d0"
version = "2025.2.0+0"

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"
version = "1.11.0"

[[deps.IntervalTrees]]
git-tree-sha1 = "dc3b97bb5c9cb7c437f74027309f2c2f09a82aaf"
uuid = "524e6230-43b7-53ae-be76-1e9e4d08d11b"
version = "1.1.0"

[[deps.IrrationalConstants]]
git-tree-sha1 = "b2d91fe939cae05960e760110b328288867b5758"
uuid = "92d709cd-6900-40b7-9082-c6be49f344b6"
version = "0.2.6"

[[deps.IterTools]]
git-tree-sha1 = "42d5f897009e7ff2cf88db414a389e5ed1bdd023"
uuid = "c8e1da08-722c-5040-9ed9-7db0dc04731e"
version = "1.10.0"

[[deps.IteratorInterfaceExtensions]]
git-tree-sha1 = "a3f24677c21f5bbe9d2a714f95dcd58337fb2856"
uuid = "82899510-4779-5014-852e-03e436cf321d"
version = "1.0.0"

[[deps.JLLWrappers]]
deps = ["Artifacts", "Preferences"]
git-tree-sha1 = "0533e564aae234aff59ab625543145446d8b6ec2"
uuid = "692b3bcd-3c85-4b1f-b108-f13ce0eb3210"
version = "1.7.1"

[[deps.JSON]]
deps = ["Dates", "Mmap", "Parsers", "Unicode"]
git-tree-sha1 = "31e996f0a15c7b280ba9f76636b3ff9e2ae58c9a"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.4"

[[deps.JuliaSyntaxHighlighting]]
deps = ["StyledStrings"]
uuid = "ac6e5ff7-fb65-4e79-a425-ec3bc9c03011"
version = "1.12.0"

[[deps.LRSLib]]
deps = ["LinearAlgebra", "Markdown", "Polyhedra", "lrslib_jll"]
git-tree-sha1 = "8c8be6898c12aa658225574f642c3f3135577d91"
uuid = "262c1cb6-76e2-5873-868b-19ece3183cc5"
version = "0.8.3"

[[deps.LRUCache]]
git-tree-sha1 = "5519b95a490ff5fe629c4a7aa3b3dfc9160498b3"
uuid = "8ac3fa9e-de4c-5943-b1dc-09c6b5f20637"
version = "1.6.2"
weakdeps = ["Serialization"]

    [deps.LRUCache.extensions]
    SerializationExt = ["Serialization"]

[[deps.LaTeXStrings]]
git-tree-sha1 = "dda21b8cbd6a6c40d9d02a73230f9d70fed6918c"
uuid = "b964fa9f-0449-5b57-a5c2-d3ea65f4040f"
version = "1.4.0"

[[deps.LayoutPointers]]
deps = ["ArrayInterface", "LinearAlgebra", "ManualMemory", "SIMDTypes", "Static", "StaticArrayInterface"]
git-tree-sha1 = "a9eaadb366f5493a5654e843864c13d8b107548c"
uuid = "10f19ff3-798f-405d-979b-55457f8fc047"
version = "0.1.17"

[[deps.LazyArtifacts]]
deps = ["Artifacts", "Pkg"]
uuid = "4af54fe1-eca0-43a8-85a7-787d91b784e3"
version = "1.11.0"

[[deps.LibCURL]]
deps = ["LibCURL_jll", "MozillaCACerts_jll"]
uuid = "b27032c2-a3e7-50c8-80cd-2d36dbcbfd21"
version = "0.6.4"

[[deps.LibCURL_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "OpenSSL_jll", "Zlib_jll", "nghttp2_jll"]
uuid = "deac9b47-8bc7-5906-a0fe-35ac56dc84c0"
version = "8.15.0+0"

[[deps.LibGit2]]
deps = ["LibGit2_jll", "NetworkOptions", "Printf", "SHA"]
uuid = "76f85450-5226-5b5a-8eaa-529ad045b433"
version = "1.11.0"

[[deps.LibGit2_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "OpenSSL_jll"]
uuid = "e37daf67-58a4-590a-8e99-b0245dd2ffc5"
version = "1.9.0+0"

[[deps.LibSSH2_jll]]
deps = ["Artifacts", "Libdl", "OpenSSL_jll"]
uuid = "29816b5a-b9ab-546f-933c-edad1886dfa8"
version = "1.11.3+1"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"
version = "1.11.0"

[[deps.Libiconv_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "be484f5c92fad0bd8acfef35fe017900b0b73809"
uuid = "94ce4f54-9a6c-5748-9c1c-f9c7231a4531"
version = "1.18.0+0"

[[deps.LightXML]]
deps = ["Libdl", "XML2_jll"]
git-tree-sha1 = "aa971a09f0f1fe92fe772713a564aa48abe510df"
uuid = "9c8b4983-aa76-5018-a973-4c85ecc9e179"
version = "0.9.3"

[[deps.LineSearches]]
deps = ["LinearAlgebra", "NLSolversBase", "NaNMath", "Printf"]
git-tree-sha1 = "a666999510c794fe1d9dfa629ef33366f11103aa"
uuid = "d3d80556-e9d4-5f37-9878-2ab0fcc64255"
version = "7.6.1"

[[deps.LinearAlgebra]]
deps = ["Libdl", "OpenBLAS_jll", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"
version = "1.12.0"

[[deps.LinearAlgebraX]]
deps = ["LinearAlgebra", "Mods", "Primes", "SimplePolynomials"]
git-tree-sha1 = "81b61301d2881af967ad53b13c64f21421040d46"
uuid = "9b3f67b0-2d00-526e-9884-9e4938f8fb88"
version = "0.2.11"

[[deps.LogExpFunctions]]
deps = ["DocStringExtensions", "IrrationalConstants", "LinearAlgebra"]
git-tree-sha1 = "13ca9e2586b89836fd20cccf56e57e2b9ae7f38f"
uuid = "2ab3a3ac-af41-5b50-aa03-7779005ae688"
version = "0.3.29"

    [deps.LogExpFunctions.extensions]
    LogExpFunctionsChainRulesCoreExt = "ChainRulesCore"
    LogExpFunctionsChangesOfVariablesExt = "ChangesOfVariables"
    LogExpFunctionsInverseFunctionsExt = "InverseFunctions"

    [deps.LogExpFunctions.weakdeps]
    ChainRulesCore = "d360d2e6-b24c-11e9-a2a3-2a2ae2dbcce4"
    ChangesOfVariables = "9e997f8a-9a97-42d5-a9f1-ce6bfc15e2c0"
    InverseFunctions = "3587e190-3f89-42d0-90ee-14403ec27112"

[[deps.Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"
version = "1.11.0"

[[deps.LoopVectorization]]
deps = ["ArrayInterface", "CPUSummary", "CloseOpenIntervals", "DocStringExtensions", "HostCPUFeatures", "IfElse", "LayoutPointers", "LinearAlgebra", "OffsetArrays", "PolyesterWeave", "PrecompileTools", "SIMDTypes", "SLEEFPirates", "Static", "StaticArrayInterface", "ThreadingUtilities", "UnPack", "VectorizationBase"]
git-tree-sha1 = "a9fc7883eb9b5f04f46efb9a540833d1fad974b3"
uuid = "bdcacae8-1622-11e9-2a5c-532679323890"
version = "0.12.173"

    [deps.LoopVectorization.extensions]
    ForwardDiffExt = ["ChainRulesCore", "ForwardDiff"]
    ForwardDiffNNlibExt = ["ForwardDiff", "NNlib"]
    SpecialFunctionsExt = "SpecialFunctions"

    [deps.LoopVectorization.weakdeps]
    ChainRulesCore = "d360d2e6-b24c-11e9-a2a3-2a2ae2dbcce4"
    ForwardDiff = "f6369f11-7733-5829-9624-2563aa707210"
    NNlib = "872c559c-99b0-510c-b3b7-b6c96a88d5cd"
    SpecialFunctions = "276daf66-3868-5448-9aa4-cd146d93841b"

[[deps.METIS_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "1c20a46719c0dc4ec4e7021ca38f53e1ec9268d9"
uuid = "d00139f3-1899-568f-a2f0-47f597d42d70"
version = "5.1.2+1"

[[deps.MIMEs]]
git-tree-sha1 = "65f28ad4b594aebe22157d6fac869786a255b7eb"
uuid = "6c6e2e6c-3030-632d-7369-2d6c69616d65"
version = "0.1.4"

[[deps.MKL_jll]]
deps = ["Artifacts", "IntelOpenMP_jll", "JLLWrappers", "LazyArtifacts", "Libdl", "oneTBB_jll"]
git-tree-sha1 = "282cadc186e7b2ae0eeadbd7a4dffed4196ae2aa"
uuid = "856f044c-d86e-5d09-b602-aeab76dc8ba7"
version = "2025.2.0+0"

[[deps.MPC_jll]]
deps = ["Artifacts", "GMP_jll", "JLLWrappers", "Libdl", "MPFR_jll"]
git-tree-sha1 = "214b9b320b80528b95559b1dac8673737d728800"
uuid = "2ce0c516-f11f-5db3-98ad-e0e1048fbd70"
version = "1.3.1+0"

[[deps.MPFR_jll]]
deps = ["Artifacts", "GMP_jll", "Libdl"]
uuid = "3a97d323-0669-5f0c-9066-3539efd106a3"
version = "4.2.2+0"

[[deps.MUMPS_seq_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "JLLWrappers", "Libdl", "METIS_jll", "libblastrampoline_jll"]
git-tree-sha1 = "fc0c8442887b48c15aec2b1787a5fc812a99b2fd"
uuid = "d7ed1dd3-d0ae-5e8e-bfb4-87a502085b8d"
version = "500.800.100+0"

[[deps.MacroTools]]
git-tree-sha1 = "1e0228a030642014fe5cfe68c2c0a818f9e3f522"
uuid = "1914dd2f-81c6-5fcd-8719-6d5c9610ff09"
version = "0.5.16"

[[deps.ManualMemory]]
git-tree-sha1 = "bcaef4fc7a0cfe2cba636d84cda54b5e4e4ca3cd"
uuid = "d125e4d3-2237-4719-b19c-fa641b8a4667"
version = "0.1.8"

[[deps.Markdown]]
deps = ["Base64", "JuliaSyntaxHighlighting", "StyledStrings"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"
version = "1.11.0"

[[deps.MathOptInterface]]
deps = ["BenchmarkTools", "CodecBzip2", "CodecZlib", "ForwardDiff", "JSON", "LinearAlgebra", "MutableArithmetics", "NaNMath", "OrderedCollections", "PrecompileTools", "Printf", "SparseArrays", "SpecialFunctions", "Test"]
git-tree-sha1 = "ce739e3d8a21313ea418772edfc3b7b15a1dfc16"
uuid = "b8f27783-ece8-5eb3-8dc8-9495eed66fee"
version = "1.50.1"

[[deps.Missings]]
deps = ["DataAPI"]
git-tree-sha1 = "ec4f7fbeab05d7747bdf98eb74d130a2a2ed298d"
uuid = "e1d29d7a-bbdc-5cf2-9ac0-f12de2c33e28"
version = "1.2.0"

[[deps.MixedSubdivisions]]
deps = ["LinearAlgebra", "MultivariatePolynomials", "ProgressMeter", "StaticArrays"]
git-tree-sha1 = "4fce5c03b4dcdbb89da6fba4d42cf870bfbd9c7a"
uuid = "291d046c-3347-11e9-1e74-c3d251d406c6"
version = "1.2.0"

[[deps.Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"
version = "1.11.0"

[[deps.Mods]]
git-tree-sha1 = "0a3c164857cfc4defe0ac09e6b0123d61320abb1"
uuid = "7475f97c-0381-53b1-977b-4c60186c8d62"
version = "2.2.6"

[[deps.MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"
version = "2025.11.4"

[[deps.Multisets]]
git-tree-sha1 = "f4205a002e2e0c4a10971ea313084ee212f761a4"
uuid = "3b2b4ff1-bcff-5658-a3ee-dbcf1ce5ac09"
version = "0.4.6"

[[deps.MultivariatePolynomials]]
deps = ["DataStructures", "LinearAlgebra", "MutableArithmetics", "StarAlgebras"]
git-tree-sha1 = "9436679244f099fe5cd8a8053f40696be4e3bdd8"
uuid = "102ac46a-7ee4-5c85-9060-abc95bfdeaa3"
version = "0.5.18"

    [deps.MultivariatePolynomials.extensions]
    MultivariatePolynomialsChainRulesCoreExt = "ChainRulesCore"

    [deps.MultivariatePolynomials.weakdeps]
    ChainRulesCore = "d360d2e6-b24c-11e9-a2a3-2a2ae2dbcce4"

[[deps.MutableArithmetics]]
deps = ["LinearAlgebra", "SparseArrays", "Test"]
git-tree-sha1 = "7c25249fc13a070f5ba433c50e21e22bb33c6fb0"
uuid = "d8a4904e-b15c-11e9-3269-09a3773c0cb0"
version = "1.7.1"

[[deps.NLSolversBase]]
deps = ["ADTypes", "DifferentiationInterface", "FiniteDiff", "LinearAlgebra"]
git-tree-sha1 = "b3f76b463c7998473062992b246045e6961a074e"
uuid = "d41bc354-129a-5804-8e4c-c37616107c6c"
version = "8.0.0"

[[deps.NLopt]]
deps = ["CEnum", "NLopt_jll"]
git-tree-sha1 = "624785b15005a0e0f4e462b27ee745dbe5941863"
uuid = "76087f3c-5699-56af-9a33-bf431cd00edd"
version = "1.2.1"
weakdeps = ["MathOptInterface"]

    [deps.NLopt.extensions]
    NLoptMathOptInterfaceExt = ["MathOptInterface"]

[[deps.NLopt_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "b0154a615d5b2b6cf7a2501123b793577d0b9950"
uuid = "079eb43e-fd8e-5478-9966-2cf3e3edb778"
version = "2.10.0+0"

[[deps.NaNMath]]
deps = ["OpenLibm_jll"]
git-tree-sha1 = "9b8215b1ee9e78a293f99797cd31375471b2bcae"
uuid = "77ba4419-2d1f-58cd-9bb1-8ffee604a2e3"
version = "1.1.3"

[[deps.NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"
version = "1.3.0"

[[deps.OffsetArrays]]
git-tree-sha1 = "117432e406b5c023f665fa73dc26e79ec3630151"
uuid = "6fe1bfb0-de20-5000-8ca7-80f57d26f881"
version = "1.17.0"
weakdeps = ["Adapt"]

    [deps.OffsetArrays.extensions]
    OffsetArraysAdaptExt = "Adapt"

[[deps.OpenBLAS32_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "JLLWrappers", "Libdl"]
git-tree-sha1 = "46cce8b42186882811da4ce1f4c7208b02deb716"
uuid = "656ef2d0-ae68-5445-9ca0-591084a874a2"
version = "0.3.30+0"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"
version = "0.3.29+0"

[[deps.OpenLibm_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "05823500-19ac-5b8b-9628-191a04bc5112"
version = "0.8.7+0"

[[deps.OpenSSL_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "458c3c95-2e84-50aa-8efc-19380b2a3a95"
version = "3.5.4+0"

[[deps.OpenSpecFun_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "JLLWrappers", "Libdl"]
git-tree-sha1 = "1346c9208249809840c91b26703912dff463d335"
uuid = "efe28fd5-8261-553b-a9e1-b2916fc3738e"
version = "0.5.6+0"

[[deps.Optim]]
deps = ["ADTypes", "EnumX", "FillArrays", "LineSearches", "LinearAlgebra", "NLSolversBase", "NaNMath", "PositiveFactorizations", "Printf", "SparseArrays", "Statistics"]
git-tree-sha1 = "7957b66b4e80f1031417197099f35273f7dd93dd"
uuid = "429524aa-4258-5aef-a3af-852621145aeb"
version = "2.0.1"
weakdeps = ["MathOptInterface"]

    [deps.Optim.extensions]
    OptimMOIExt = "MathOptInterface"

[[deps.OrderedCollections]]
git-tree-sha1 = "05868e21324cede2207c6f0f466b4bfef6d5e7ee"
uuid = "bac558e1-5e72-5ebc-8fee-abe8a469f55d"
version = "1.8.1"

[[deps.Osi_jll]]
deps = ["Artifacts", "CoinUtils_jll", "CompilerSupportLibraries_jll", "JLLWrappers", "Libdl", "libblastrampoline_jll"]
git-tree-sha1 = "95ce36c3c9095e409931631702446d44ebfa4e3b"
uuid = "7da25872-d9ce-5375-a4d3-7a845f58efdd"
version = "0.10800.1100+0"

[[deps.PDMats]]
deps = ["LinearAlgebra", "SparseArrays", "SuiteSparse"]
git-tree-sha1 = "e4cff168707d441cd6bf3ff7e4832bdf34278e4a"
uuid = "90014a1f-27ba-587c-ab20-58faa44d9150"
version = "0.11.37"
weakdeps = ["StatsBase"]

    [deps.PDMats.extensions]
    StatsBaseExt = "StatsBase"

[[deps.Parameters]]
deps = ["OrderedCollections", "UnPack"]
git-tree-sha1 = "34c0e9ad262e5f7fc75b10a9952ca7692cfc5fbe"
uuid = "d96e819e-fc66-5662-9728-84c9c7592b0a"
version = "0.12.3"

[[deps.Parsers]]
deps = ["Dates", "PrecompileTools", "UUIDs"]
git-tree-sha1 = "7d2f8f21da5db6a806faf7b9b292296da42b2810"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.8.3"

[[deps.Permutations]]
deps = ["Combinatorics", "LinearAlgebra", "Random"]
git-tree-sha1 = "b1f03a4943c62552a12c7f95965b76c3f91cf5b7"
uuid = "2ae35dd2-176d-5d53-8349-f30d82d94d4f"
version = "0.4.23"

[[deps.Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "FileWatching", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "Random", "SHA", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"
version = "1.12.1"
weakdeps = ["REPL"]

    [deps.Pkg.extensions]
    REPLExt = "REPL"

[[deps.PlutoUI]]
deps = ["AbstractPlutoDingetjes", "Base64", "ColorTypes", "Dates", "FixedPointNumbers", "Hyperscript", "HypertextLiteral", "IOCapture", "InteractiveUtils", "JSON", "Logging", "MIMEs", "Markdown", "Random", "Reexport", "URIs", "UUIDs"]
git-tree-sha1 = "71a22244e352aa8c5f0f2adde4150f62368a3f2e"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.58"

[[deps.PolyesterWeave]]
deps = ["BitTwiddlingConvenienceFunctions", "CPUSummary", "IfElse", "Static", "ThreadingUtilities"]
git-tree-sha1 = "645bed98cd47f72f67316fd42fc47dee771aefcd"
uuid = "1d0040c9-8b98-4ee7-8388-3f51789ca0ad"
version = "0.2.2"

[[deps.Polyhedra]]
deps = ["GenericLinearAlgebra", "LinearAlgebra", "MathOptInterface", "MutableArithmetics", "SparseArrays", "StaticArrays"]
git-tree-sha1 = "754bc39995daff07ed01d7ebdc8c9cf6681d241e"
uuid = "67491407-f73d-577b-9b50-8179a7c68029"
version = "0.8.1"

    [deps.Polyhedra.extensions]
    PolyhedraGeometryBasicsExt = "GeometryBasics"
    PolyhedraJuMPExt = "JuMP"
    PolyhedraRecipesBaseExt = "RecipesBase"

    [deps.Polyhedra.weakdeps]
    GeometryBasics = "5c1252a2-5f33-56bf-86c9-59e7332b4326"
    JuMP = "4076af6c-e467-56ae-b986-b466b2749572"
    RecipesBase = "3cdcf5f2-1ef4-517c-9805-6587b60abb01"

[[deps.Polynomials]]
deps = ["LinearAlgebra", "OrderedCollections", "Setfield", "SparseArrays"]
git-tree-sha1 = "2d99b4c8a7845ab1342921733fa29366dae28b24"
uuid = "f27b6e38-b328-58d1-80ce-0feddd5e7a45"
version = "4.1.1"

    [deps.Polynomials.extensions]
    PolynomialsChainRulesCoreExt = "ChainRulesCore"
    PolynomialsFFTWExt = "FFTW"
    PolynomialsMakieExt = "Makie"
    PolynomialsMutableArithmeticsExt = "MutableArithmetics"
    PolynomialsRecipesBaseExt = "RecipesBase"

    [deps.Polynomials.weakdeps]
    ChainRulesCore = "d360d2e6-b24c-11e9-a2a3-2a2ae2dbcce4"
    FFTW = "7a1cc6ca-52ef-59f5-83cd-3a7055c09341"
    Makie = "ee78f7c6-11fb-53f2-987a-cfe4a2b5a57a"
    MutableArithmetics = "d8a4904e-b15c-11e9-3269-09a3773c0cb0"
    RecipesBase = "3cdcf5f2-1ef4-517c-9805-6587b60abb01"

[[deps.PositiveFactorizations]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "17275485f373e6673f7e7f97051f703ed5b15b20"
uuid = "85a6dd25-e78a-55b7-8502-1745935b8125"
version = "0.2.4"

[[deps.PrecompileTools]]
deps = ["Preferences"]
git-tree-sha1 = "07a921781cab75691315adc645096ed5e370cb77"
uuid = "aea7be01-6a6a-4083-8856-8a6e6704d82a"
version = "1.3.3"

[[deps.Preferences]]
deps = ["TOML"]
git-tree-sha1 = "8b770b60760d4451834fe79dd483e318eee709c4"
uuid = "21216c6a-2e73-6563-6e65-726566657250"
version = "1.5.2"

[[deps.PrettyTables]]
deps = ["Crayons", "LaTeXStrings", "Markdown", "PrecompileTools", "Printf", "REPL", "Reexport", "StringManipulation", "Tables"]
git-tree-sha1 = "624de6279ab7d94fc9f672f0068107eb6619732c"
uuid = "08abe8d2-0d0c-5749-adfa-8a2ac140af0d"
version = "3.3.2"

    [deps.PrettyTables.extensions]
    PrettyTablesTypstryExt = "Typstry"

    [deps.PrettyTables.weakdeps]
    Typstry = "f0ed7684-a786-439e-b1e3-3b82803b501e"

[[deps.Primes]]
deps = ["IntegerMathUtils"]
git-tree-sha1 = "25cdd1d20cd005b52fc12cb6be3f75faaf59bb9b"
uuid = "27ebfcd6-29c5-5fa9-bf4b-fb8fc14df3ae"
version = "0.5.7"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"
version = "1.11.0"

[[deps.Profile]]
deps = ["StyledStrings"]
uuid = "9abbd945-dff8-562f-b5e8-e1ebf5ef1b79"
version = "1.11.0"

[[deps.ProgressMeter]]
deps = ["Distributed", "Printf"]
git-tree-sha1 = "fbb92c6c56b34e1a2c4c36058f68f332bec840e7"
uuid = "92933f4c-e287-5a05-a399-4b506db050ca"
version = "1.11.0"

[[deps.ProjectiveVectors]]
deps = ["LinearAlgebra", "StaticArrays"]
git-tree-sha1 = "3ddd2e7221440ec76dc01e787c3d3f5a064037b1"
uuid = "01f381cc-face-5a0a-ade9-ef63dc65d628"
version = "1.1.4"

[[deps.PtrArrays]]
git-tree-sha1 = "4fbbafbc6251b883f4d2705356f3641f3652a7fe"
uuid = "43287f4e-b6f4-7ad1-bb20-aadabca52c3d"
version = "1.4.0"

[[deps.QuadGK]]
deps = ["DataStructures", "LinearAlgebra"]
git-tree-sha1 = "5e8e8b0ab68215d7a2b14b9921a946fee794749e"
uuid = "1fd47b50-473d-5c70-9696-f719f8f3bcdc"
version = "2.11.3"

    [deps.QuadGK.extensions]
    QuadGKEnzymeExt = "Enzyme"

    [deps.QuadGK.weakdeps]
    Enzyme = "7da242da-08ed-463a-9acd-ee780be4f1d9"

[[deps.QuantEcon]]
deps = ["DSP", "Distributions", "FFTW", "Graphs", "LinearAlgebra", "Markdown", "NLopt", "Optim", "Primes", "Random", "SparseArrays", "SpecialFunctions", "Statistics", "StatsBase"]
git-tree-sha1 = "4636bc3a21d64bd07ede6954bf6d0fbac83fc729"
uuid = "fcd29c91-0bd7-5a09-975d-7ac3f643a60c"
version = "0.17.1"

[[deps.REPL]]
deps = ["InteractiveUtils", "JuliaSyntaxHighlighting", "Markdown", "Sockets", "StyledStrings", "Unicode"]
uuid = "3fa0cd96-eef1-5676-8a61-b3b8758bbffb"
version = "1.11.0"

[[deps.Random]]
deps = ["SHA"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"
version = "1.11.0"

[[deps.Reexport]]
git-tree-sha1 = "45e428421666073eab6f2da5c9d310d99bb12f9b"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.2.2"

[[deps.Requires]]
deps = ["UUIDs"]
git-tree-sha1 = "62389eeff14780bfe55195b7204c0d8738436d64"
uuid = "ae029012-a4dd-5104-9daa-d747884805df"
version = "1.3.1"

[[deps.RingLists]]
deps = ["Random"]
git-tree-sha1 = "70d8d52c6d4238cace6ae1a7dd2c0c4d43acdf0b"
uuid = "286e9d63-9694-5540-9e3c-4e6708fa07b2"
version = "0.2.9"

[[deps.Rmath]]
deps = ["Random", "Rmath_jll"]
git-tree-sha1 = "5b3d50eb374cea306873b371d3f8d3915a018f0b"
uuid = "79098fc4-a85e-5d69-aa6a-4863f24498fa"
version = "0.9.0"

[[deps.Rmath_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "58cdd8fb2201a6267e1db87ff148dd6c1dbd8ad8"
uuid = "f50d1b31-88e8-58de-be2c-1cc44531875f"
version = "0.5.1+0"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"
version = "0.7.0"

[[deps.SIMDTypes]]
git-tree-sha1 = "330289636fb8107c5f32088d2741e9fd7a061a5c"
uuid = "94e857df-77ce-4151-89e5-788b33177be4"
version = "0.1.0"

[[deps.SLEEFPirates]]
deps = ["IfElse", "Static", "VectorizationBase"]
git-tree-sha1 = "456f610ca2fbd1c14f5fcf31c6bfadc55e7d66e0"
uuid = "476501e8-09a2-5ece-8869-fb82de89a1fa"
version = "0.6.43"

[[deps.SciMLPublic]]
git-tree-sha1 = "0ba076dbdce87ba230fff48ca9bca62e1f345c9b"
uuid = "431bcebd-1456-4ced-9d72-93c2757fff0b"
version = "1.0.1"

[[deps.ScopedValues]]
deps = ["HashArrayMappedTries", "Logging"]
git-tree-sha1 = "ac4b837d89a58c848e85e698e2a2514e9d59d8f6"
uuid = "7e506255-f358-4e82-b7e4-beb19740aa63"
version = "1.6.0"

[[deps.SemialgebraicSets]]
deps = ["CommonSolve", "LinearAlgebra", "MultivariatePolynomials", "MutableArithmetics", "Random", "StarAlgebras"]
git-tree-sha1 = "c11c655945d049effd137c0ff41a67dd4f34c633"
uuid = "8e049039-38e8-557d-ae3a-bc521ccf6204"
version = "0.3.5"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"
version = "1.11.0"

[[deps.Setfield]]
deps = ["ConstructionBase", "Future", "MacroTools", "StaticArraysCore"]
git-tree-sha1 = "c5391c6ace3bc430ca630251d02ea9687169ca68"
uuid = "efcf1570-3423-57d1-acb7-fd33fddbac46"
version = "1.1.2"

[[deps.SimpleGraphs]]
deps = ["AbstractLattices", "Combinatorics", "DataStructures", "IterTools", "LightXML", "LinearAlgebra", "LinearAlgebraX", "Optim", "Primes", "Random", "RingLists", "SimplePartitions", "SimplePolynomials", "SimpleRandom", "SparseArrays", "Statistics"]
git-tree-sha1 = "36ac683e16dd96f9bdb455dee675bd0ee2e0907a"
uuid = "55797a34-41de-5266-9ec1-32ac4eb504d3"
version = "0.8.9"

[[deps.SimplePartitions]]
deps = ["AbstractLattices", "DataStructures", "Permutations"]
git-tree-sha1 = "76cdce94e07849d1172ccb8f3a60a0bbbebe58b3"
uuid = "ec83eff0-a5b5-5643-ae32-5cbf6eedec9d"
version = "0.3.3"

[[deps.SimplePolynomials]]
deps = ["Mods", "Multisets", "Polynomials", "Primes"]
git-tree-sha1 = "77b2c5e731f7e50bbd088ccc2810232e06c1afa3"
uuid = "cc47b68c-3164-5771-a705-2bc0097375a0"
version = "0.2.18"

[[deps.SimpleRandom]]
deps = ["Distributions", "LinearAlgebra", "Random"]
git-tree-sha1 = "bb4f42b25b87f124478207a82f5b02dfafdb3e63"
uuid = "a6525b86-64cd-54fa-8f65-62fc48bdc0e8"
version = "0.3.2"

[[deps.SimpleTraits]]
deps = ["InteractiveUtils", "MacroTools"]
git-tree-sha1 = "be8eeac05ec97d379347584fa9fe2f5f76795bcb"
uuid = "699a6c99-e7fa-54fc-8d76-47d257e15c1d"
version = "0.9.5"

[[deps.Sockets]]
uuid = "6462fe0b-24de-5631-8697-dd941f90decc"
version = "1.11.0"

[[deps.SortingAlgorithms]]
deps = ["DataStructures"]
git-tree-sha1 = "64d974c2e6fdf07f8155b5b2ca2ffa9069b608d9"
uuid = "a2af1166-a08f-5f64-846c-94a0d3cef48c"
version = "1.2.2"

[[deps.SparseArrays]]
deps = ["Libdl", "LinearAlgebra", "Random", "Serialization", "SuiteSparse_jll"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"
version = "1.12.0"

[[deps.SpecialFunctions]]
deps = ["IrrationalConstants", "LogExpFunctions", "OpenLibm_jll", "OpenSpecFun_jll"]
git-tree-sha1 = "2700b235561b0335d5bef7097a111dc513b8655e"
uuid = "276daf66-3868-5448-9aa4-cd146d93841b"
version = "2.7.2"

    [deps.SpecialFunctions.extensions]
    SpecialFunctionsChainRulesCoreExt = "ChainRulesCore"

    [deps.SpecialFunctions.weakdeps]
    ChainRulesCore = "d360d2e6-b24c-11e9-a2a3-2a2ae2dbcce4"

[[deps.StarAlgebras]]
deps = ["LinearAlgebra", "MutableArithmetics", "SparseArrays"]
git-tree-sha1 = "235b1f9d287bbf34083b3d0829343a7942c0ad1c"
uuid = "0c0c59c1-dc5f-42e9-9a8b-b5dc384a6cd1"
version = "0.3.0"

[[deps.Static]]
deps = ["CommonWorldInvalidations", "IfElse", "PrecompileTools", "SciMLPublic"]
git-tree-sha1 = "49440414711eddc7227724ae6e570c7d5559a086"
uuid = "aedffcd0-7271-4cad-89d0-dc628f76c6d3"
version = "1.3.1"

[[deps.StaticArrayInterface]]
deps = ["ArrayInterface", "Compat", "IfElse", "LinearAlgebra", "PrecompileTools", "SciMLPublic", "Static"]
git-tree-sha1 = "aa1ea41b3d45ac449d10477f65e2b40e3197a0d2"
uuid = "0d7ed370-da01-4f52-bd93-41d350b8b718"
version = "1.9.0"
weakdeps = ["OffsetArrays", "StaticArrays"]

    [deps.StaticArrayInterface.extensions]
    StaticArrayInterfaceOffsetArraysExt = "OffsetArrays"
    StaticArrayInterfaceStaticArraysExt = "StaticArrays"

[[deps.StaticArrays]]
deps = ["LinearAlgebra", "PrecompileTools", "Random", "StaticArraysCore"]
git-tree-sha1 = "246a8bb2e6667f832eea063c3a56aef96429a3db"
uuid = "90137ffa-7385-5640-81b9-e52037218182"
version = "1.9.18"

    [deps.StaticArrays.extensions]
    StaticArraysChainRulesCoreExt = "ChainRulesCore"
    StaticArraysStatisticsExt = "Statistics"

    [deps.StaticArrays.weakdeps]
    ChainRulesCore = "d360d2e6-b24c-11e9-a2a3-2a2ae2dbcce4"
    Statistics = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"

[[deps.StaticArraysCore]]
git-tree-sha1 = "6ab403037779dae8c514bad259f32a447262455a"
uuid = "1e83bf80-4336-4d27-bf5d-d5a4f845583c"
version = "1.4.4"

[[deps.Statistics]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "ae3bb1eb3bba077cd276bc5cfc337cc65c3075c0"
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"
version = "1.11.1"
weakdeps = ["SparseArrays"]

    [deps.Statistics.extensions]
    SparseArraysExt = ["SparseArrays"]

[[deps.StatsAPI]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "178ed29fd5b2a2cfc3bd31c13375ae925623ff36"
uuid = "82ae8749-77ed-4fe6-ae5f-f523153014b0"
version = "1.8.0"

[[deps.StatsBase]]
deps = ["AliasTables", "DataAPI", "DataStructures", "IrrationalConstants", "LinearAlgebra", "LogExpFunctions", "Missings", "Printf", "Random", "SortingAlgorithms", "SparseArrays", "Statistics", "StatsAPI"]
git-tree-sha1 = "aceda6f4e598d331548e04cc6b2124a6148138e3"
uuid = "2913bbd2-ae8a-5f71-8c99-4fb6c76f3a91"
version = "0.34.10"

[[deps.StatsFuns]]
deps = ["HypergeometricFunctions", "IrrationalConstants", "LogExpFunctions", "Reexport", "Rmath", "SpecialFunctions"]
git-tree-sha1 = "91f091a8716a6bb38417a6e6f274602a19aaa685"
uuid = "4c63d2b9-4356-54db-8cca-17b64c39e42c"
version = "1.5.2"

    [deps.StatsFuns.extensions]
    StatsFunsChainRulesCoreExt = "ChainRulesCore"
    StatsFunsInverseFunctionsExt = "InverseFunctions"

    [deps.StatsFuns.weakdeps]
    ChainRulesCore = "d360d2e6-b24c-11e9-a2a3-2a2ae2dbcce4"
    InverseFunctions = "3587e190-3f89-42d0-90ee-14403ec27112"

[[deps.StringManipulation]]
deps = ["PrecompileTools"]
git-tree-sha1 = "d05693d339e37d6ab134c5ab53c29fce5ee5d7d5"
uuid = "892a3eda-7b42-436c-8928-eab12a02cf0e"
version = "0.4.4"

[[deps.StructArrays]]
deps = ["ConstructionBase", "DataAPI", "Tables"]
git-tree-sha1 = "ad8002667372439f2e3611cfd14097e03fa4bccd"
uuid = "09ab397b-f2b6-538f-b94a-2f83cf4a842a"
version = "0.7.3"

    [deps.StructArrays.extensions]
    StructArraysAdaptExt = "Adapt"
    StructArraysGPUArraysCoreExt = ["GPUArraysCore", "KernelAbstractions"]
    StructArraysLinearAlgebraExt = "LinearAlgebra"
    StructArraysSparseArraysExt = "SparseArrays"
    StructArraysStaticArraysExt = "StaticArrays"

    [deps.StructArrays.weakdeps]
    Adapt = "79e6a3ab-5dfb-504d-930d-738a2a938a0e"
    GPUArraysCore = "46192b85-c4d5-4398-a991-12ede77f4527"
    KernelAbstractions = "63c18a36-062a-441e-b654-da1e3ab1ce7c"
    LinearAlgebra = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"
    SparseArrays = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"
    StaticArrays = "90137ffa-7385-5640-81b9-e52037218182"

[[deps.StyledStrings]]
uuid = "f489334b-da3d-4c2e-b8f0-e476e12c162b"
version = "1.11.0"

[[deps.SuiteSparse]]
deps = ["Libdl", "LinearAlgebra", "Serialization", "SparseArrays"]
uuid = "4607b0f0-06f3-5cda-b6b1-a6196a1729e9"

[[deps.SuiteSparse_jll]]
deps = ["Artifacts", "Libdl", "libblastrampoline_jll"]
uuid = "bea87d4a-7f5b-5778-9afe-8cc45184846c"
version = "7.8.3+2"

[[deps.SymEngine_jll]]
deps = ["Artifacts", "GMP_jll", "JLLWrappers", "Libdl", "MPC_jll", "MPFR_jll"]
git-tree-sha1 = "98242aa66223902df802ac49b00f6b2d15a2efe3"
uuid = "3428059b-622b-5399-b16f-d347a77089a4"
version = "0.12.0+0"

[[deps.TOML]]
deps = ["Dates"]
uuid = "fa267f1f-6049-4f14-aa54-33bafae1ed76"
version = "1.0.3"

[[deps.TableTraits]]
deps = ["IteratorInterfaceExtensions"]
git-tree-sha1 = "c06b2f539df1c6efa794486abfb6ed2022561a39"
uuid = "3783bdb8-4a98-5b6b-af9a-565f29a5fe9c"
version = "1.0.1"

[[deps.Tables]]
deps = ["DataAPI", "DataValueInterfaces", "IteratorInterfaceExtensions", "OrderedCollections", "TableTraits"]
git-tree-sha1 = "f2c1efbc8f3a609aadf318094f8fc5204bdaf344"
uuid = "bd369af6-aec1-5ad0-b16a-f7cc5008161c"
version = "1.12.1"

[[deps.Tar]]
deps = ["ArgTools", "SHA"]
uuid = "a4e569a6-e804-4fa4-b0f3-eef7a1d5b13e"
version = "1.10.0"

[[deps.Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"
version = "1.11.0"

[[deps.ThreadingUtilities]]
deps = ["ManualMemory"]
git-tree-sha1 = "d969183d3d244b6c33796b5ed01ab97328f2db85"
uuid = "8290d209-cae3-49c0-8002-c8c24d57dab5"
version = "0.5.5"

[[deps.TranscodingStreams]]
git-tree-sha1 = "0c45878dcfdcfa8480052b6ab162cdd138781742"
uuid = "3bb67fe8-82b1-5028-8e26-92a6c54297fa"
version = "0.11.3"

[[deps.TreeViews]]
deps = ["Test"]
git-tree-sha1 = "8d0d7a3fe2f30d6a7f833a5f19f7c7a5b396eae6"
uuid = "a2a6695c-b41b-5b7d-aed9-dbfdeacea5d7"
version = "0.3.0"

[[deps.Tricks]]
git-tree-sha1 = "311349fd1c93a31f783f977a71e8b062a57d4101"
uuid = "410a4b4d-49e4-4fbc-ab6d-cb71b17b3775"
version = "0.1.13"

[[deps.URIs]]
git-tree-sha1 = "bef26fb046d031353ef97a82e3fdb6afe7f21b1a"
uuid = "5c2747f8-b7ea-4ff2-ba2e-563bfd36b1d4"
version = "1.6.1"

[[deps.UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"
version = "1.11.0"

[[deps.UnPack]]
git-tree-sha1 = "387c1f73762231e86e0c9c5443ce3b4a0a9a0c2b"
uuid = "3a884ed6-31ef-47d7-9d2a-63182c4928ed"
version = "1.0.2"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"
version = "1.11.0"

[[deps.VectorizationBase]]
deps = ["ArrayInterface", "CPUSummary", "HostCPUFeatures", "IfElse", "LayoutPointers", "Libdl", "LinearAlgebra", "SIMDTypes", "Static", "StaticArrayInterface"]
git-tree-sha1 = "d1d9a935a26c475ebffd54e9c7ad11627c43ea85"
uuid = "3d5dd08c-fd9d-11e8-17fa-ed2836048c2f"
version = "0.21.72"

[[deps.XML2_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Libiconv_jll", "Zlib_jll"]
git-tree-sha1 = "5c959b708667b34cb758e8d7c6f8e69b94c32deb"
uuid = "02c8fc9c-b97f-50b9-bbe4-9be30ff0a78a"
version = "2.15.1+0"

[[deps.Zlib_jll]]
deps = ["Libdl"]
uuid = "83775a58-1f1d-513f-b197-d71354ab007a"
version = "1.3.1+2"

[[deps.cddlib_jll]]
deps = ["Artifacts", "GMP_jll", "JLLWrappers", "Libdl"]
git-tree-sha1 = "08f5df03703af917b9bfec47b9767eb943220d08"
uuid = "f07e07eb-5685-515a-97c8-3014f6152feb"
version = "0.94.14+0"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
version = "5.15.0+0"

[[deps.lrslib_jll]]
deps = ["Artifacts", "GMP_jll", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "9169c4d5823195a7a2173fc6b479468478857438"
uuid = "3873f7d0-7b7c-52c3-bdf4-8ab39b8f337a"
version = "0.3.3+0"

[[deps.nghttp2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850ede-7688-5339-a07c-302acd2aaf8d"
version = "1.64.0+1"

[[deps.oneTBB_jll]]
deps = ["Artifacts", "JLLWrappers", "LazyArtifacts", "Libdl"]
git-tree-sha1 = "1350188a69a6e46f799d3945beef36435ed7262f"
uuid = "1317d2d5-d96f-522e-a858-c73665f53c3e"
version = "2022.0.0+1"

[[deps.p7zip_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "3f19e933-33d8-53b3-aaab-bd5110c3b7a0"
version = "17.7.0+0"
"""

# ╔═╡ Cell order:
# ╠═aed7ea62-3d79-11f1-9771-47315bb67abb
# ╠═258c62e8-c2ad-4de9-9ea2-0da1d68167c7
# ╠═93b48d96-9b0f-452a-a329-0168091093c1
# ╠═f1f57089-7c5a-4578-9d89-9cfaa0f394a6
# ╠═33a4278c-31f2-470f-bfb7-3aff2a5e5149
# ╠═30650d03-79d2-4914-a9a2-40ca28db56d7
# ╠═73e09561-3123-4111-af82-c37ac72f4f68
# ╠═9ad7781f-8eba-42e4-886f-5cbb607174a0
# ╠═eae15ce2-04a2-4c6e-8521-8e7216dd16c0
# ╠═1928de75-ea6b-409b-891f-e6324bfc2d58
# ╠═7c8bc45a-a016-4d24-b4a4-d2d2c47db341
# ╠═d47e2258-f8cd-4f91-9618-43af99ac0eb5
# ╠═209af2ee-eea6-4206-a8b0-2bb1e36b11ed
# ╠═5e433733-1663-48d8-b02b-cdaa1a3d9398
# ╠═a9228e88-8ca5-4563-b40a-5d56ae0fd480
# ╠═a55c3054-02d4-4ce8-a614-f7484ab4db80
# ╠═259bf516-354d-4f4a-b63f-4218573ea701
# ╠═f03d0b15-3dde-4514-9e33-43fcd85ebd96
# ╠═646da2ff-154f-45e0-9fc5-e975a74c3e9b
# ╠═d66fe746-a2a5-480e-891f-71346ca7687b
# ╠═c7197dc6-feb8-4dcb-bd16-9e3c3999b874
# ╠═a4ce5b1c-dfb2-4148-b79d-e2334659524a
# ╠═54793d82-e234-490d-8d23-32f231e95d77
# ╠═4eb15fea-3473-4f06-a3e5-d3de91f0bcf6
# ╠═4db212ea-ccfd-47a0-8af5-67470e02fb02
# ╠═8ffe033e-1a23-4584-9bcd-dadeafa8f128
# ╠═f053fdf3-78d3-403b-bd7a-e12a45292589
# ╠═056caaeb-5b59-4040-bede-6142e8ab51f8
# ╠═7ca6bfcc-90a8-496c-bbf1-f757ba088235
# ╠═9cc79af7-6e5b-4072-965f-2287d20312d1
# ╠═f9b2e0c2-0aeb-491c-94d0-f7ad3a4a3bf1
# ╠═8342fdce-3bd5-4c09-9b47-33e4a602bdf4
# ╠═bb4e2a31-f2f9-46e0-a173-d344fe7d4c7e
# ╠═d46dfbb2-1aba-498d-9bd0-e38b1cc6a618
# ╠═fc3f9bcf-a7a7-4b47-b1f3-2ba3a40f6bee
# ╠═6aa66746-5461-4f98-a8d3-e6719e966125
# ╠═e9a9860c-74c6-4ecd-99ed-f5ff5dc6d0c1
# ╠═73e3a2a7-84a1-4ce2-b51a-abe17766f06b
# ╠═7b44119e-720b-4fb0-8a6d-1af5039f947b
# ╠═d959f49c-a286-4a73-bd7c-f3b36a302bc8
# ╠═3935e7c4-cf84-4426-a4d6-481832434b3c
# ╠═8013d2bb-7f81-4b6e-b251-ebf91e7e1d70
# ╠═18e78f10-b715-49a0-9ca3-b531cd2a9de7
# ╠═ee0712d6-dbe0-4812-90df-43e361ddfd2b
# ╠═31b6f431-5d1f-4ebe-b0a2-dc0be1448f13
# ╠═0dece94f-46bb-4402-a3ba-320f6b2b348a
# ╠═75101e9f-0ab1-4f05-b67b-656fdf49b685
# ╠═4339bfaf-d5e3-45d4-8314-9942db3a825d
# ╠═41609f23-7646-4997-b782-0df6eec28e8b
# ╠═dd5d2cbc-6201-44f4-98ea-eaebb968021a
# ╠═e815bcc7-a21e-4831-9d4d-fc7b726aa188
# ╠═4190b91c-1bd8-4d33-8619-06e6a10447a3
# ╠═31b41b10-8d48-403f-90cd-8dac74011e49
# ╠═3e57e9d4-4105-440a-8fec-bef05d15caad
# ╠═302c35db-eb30-4e20-9b36-48d0201f640a
# ╠═204e6269-85ce-4d34-bd7d-1b55d24a91b2
# ╠═9a8a555b-6ce2-42d2-affe-b733f6f629be
# ╠═fe6f5ddb-6a51-4f62-aa93-45b0b96d585a
# ╠═ccd7d073-d4ab-458b-8fa4-568be4bcbecf
# ╠═9ebf1828-c191-4af4-9b80-9a8120a5324e
# ╠═9aa319bd-ccff-47ee-b0d4-41c5a5db1624
# ╠═263241a8-8c6c-4c21-9abd-ee6206f66f46
# ╠═359993f3-173a-40c5-8c94-665cf2089014
# ╠═853755db-cc63-40ce-9fd7-622e4741cc48
# ╠═8a59512b-5e9e-4732-9ef8-f9800c19c2d2
# ╠═9f7d8f22-8912-4feb-9f0a-52957fe9915f
# ╠═adf8acac-a8a7-4ed4-883f-74aad44bb58d
# ╠═5fcace29-1a3b-49c5-ac28-dc0b9ef4aeeb
# ╠═65ca905a-e756-4ef1-a7fb-db561f9c6b3d
# ╠═0007fc58-2fde-435e-923f-f9b795715656
# ╠═31824f05-598d-422f-8b5f-046bd2285fec
# ╠═d86d64b7-faba-40b5-bb0a-37782e417c50
# ╠═17814e09-4701-4516-b4fd-551c7c8d2128
# ╠═ed3a0666-9505-489f-a475-2f4f84277825
# ╠═94f1307f-c976-4530-9e47-4e6a3e42eaec
# ╠═3542ffc6-9b9e-4f3f-9a71-9bd4ecd6dea9
# ╠═966b8a05-99e0-43ce-bcae-c2503899439c
# ╠═bc14a915-fac4-467f-9079-09fc789a9243
# ╠═e1914a3c-2705-4474-b929-6de1eb759200
# ╠═b8f7789f-98c4-4d48-98da-9f77d3b53e53
# ╠═178a5cd6-1cb6-44ef-85cf-713182ac6f7d
# ╠═2f426d32-7e8e-4852-ba3e-b13720c196a8
# ╠═7a0e3a92-8e50-420e-b525-f6e4942d24d1
# ╠═aabe2473-14c2-4426-9ebd-477773e971af
# ╠═143e9117-54e2-4f60-bdb2-f0c2a3e9db84
# ╠═46f3c084-c7cf-4559-aab0-55d3c3505da6
# ╠═c48d5315-079f-489c-81fd-c3daf328ec59
# ╠═e5c1ee45-266d-48a1-960f-a659dd9b8190
# ╠═a347aaf7-62b3-4b9f-a78a-c36d4a773167
# ╠═4dce0257-1c42-4fa7-b761-aa0cf8ad5dc1
# ╠═1b745051-5c0f-4ebf-9b08-de9cebb87c03
# ╠═695d70ed-22e8-4cf1-a980-629005e008d3
# ╠═3a717788-a6a6-4f4f-8825-c9290a7a50b7
# ╠═ecf37e05-229c-4e14-99bf-0b4140eae34d
# ╠═9fec0bcf-162d-4201-ad32-89ac3d79d825
# ╠═6614bd1b-4c3b-4212-99c0-2de0b06798b3
# ╠═30e4e06e-3f1f-4a60-a011-6e64f4ceb328
# ╠═ad5cd675-3910-48e3-a0a7-4d8deb8f814c
# ╠═30acaf11-4e38-4544-855a-29b054a3ffa8
# ╠═36d35a05-4888-46e9-9315-40e7eca02da5
# ╠═5791ba42-d486-467a-98df-80c64f1258f7
# ╠═40593a01-59fd-496d-bd51-3e6d17e6c252
# ╠═ab0d033e-b692-46ff-935a-fd00d2b49ad8
# ╠═587914e4-a333-4ae1-a4f4-4a6316934cb3
# ╠═6b2bc55b-f96e-4750-b326-e1b12d939824
# ╠═b266ff79-1496-4f77-bc15-cc27ce31bc62
# ╠═f94dcb95-1993-4ca1-bb3f-fe8bf771526a
# ╠═e22faded-f34e-4699-b188-f3c4e71909aa
# ╠═ba1f073e-b7ba-4cc2-b18b-f62cc6c6119e
# ╠═12b0f5d3-bc56-4157-a231-953f67ec9e33
# ╠═c134228e-fa1b-47b6-a9d6-1c49c9f280b4
# ╠═faceec7f-cde5-418f-9b57-9a83f6fe93f6
# ╠═1faa6854-833f-401c-a5da-a6347e0ee1ad
# ╠═4b3df760-96d3-459a-b168-19c617971d38
# ╠═e1c017b4-957e-4985-8c23-de6799ed4a9a
# ╠═f15128cb-d562-4628-8cd0-3fdef4b43ae8
# ╠═5cb19072-5bf2-437a-b61f-2b268eb9c00c
# ╠═b0ac2f0b-bd6d-4b56-8860-6509bc0ce1c7
# ╠═1cf18d6a-0140-4273-942f-0c8c8137ea00
# ╠═a069cde2-8008-4864-8364-413183a0fc1e
# ╠═d53a6a22-aba7-43cf-b3d6-50eec66a45ab
# ╠═b17257b6-669e-42e8-8f57-8fece8e0d5e4
# ╠═755784a9-019d-4fa1-ac25-e5e6321171b1
# ╠═a27df6b8-d678-4c27-97fe-ff4cfb0516e2
# ╠═3355f9fb-b586-4531-a489-20a357654806
# ╠═18e455e7-5e9c-4ae6-bbdf-4ac0d9a02952
# ╠═5e732a57-9c3f-4fa9-876f-231e17ec8b06
# ╠═2ec549a0-d356-4d6c-833d-cb02e8524c0b
# ╠═65f4b028-61ac-42f1-87e9-eb9e3f80b9a3
# ╠═3b4e0a62-96d6-41e4-a420-912d609f08f3
# ╠═e098c690-f84a-4a21-8ed4-f37871ea0550
# ╠═ee6e159f-002f-408a-b06c-9d123143ba1d
# ╠═380157ca-f4aa-4fc6-bf30-fa11f6720552
# ╠═ed520235-d007-40ac-b952-2c635b6feba1
# ╠═b6453142-4bcb-4d90-9d5c-24fa65ab3aee
# ╠═3711f779-3b08-46ca-9572-ef7c0c593da6
# ╠═35d77366-0702-43d4-ab56-c574834c60a6
# ╠═d5afc062-5794-4e1a-856b-147ebaa71d67
# ╠═18dc9a0a-334b-41e3-94ed-5a2e1a5804c2
# ╠═5380db3d-621d-49dc-86d5-573179558868
# ╠═13369048-fed2-4fc1-8a45-1969c646aa43
# ╠═b1174cab-cdfa-4dd3-b59f-9a72a9c912df
# ╠═c188c007-53d4-4525-aa8a-3fcd1e875a1a
# ╠═f668ecbe-23f0-489a-bfb2-d22120172bcb
# ╠═a8af6868-90c4-4026-910d-dd505f331070
# ╠═d5efd9d5-bcc7-4034-ad83-4cb51502ffba
# ╠═a5cf8924-427f-453c-95a9-40d7df2455ff
# ╠═489cba22-e38c-4fff-bd0d-f728c14a7d0d
# ╠═f4139fdd-0d59-43ca-9654-4d86f2d122f0
# ╠═29a1b0af-dd79-4167-aeb4-8e69ff7b3603
# ╠═899696d1-f805-4c2b-b006-42a5a16a00e5
# ╠═02e3f860-3a47-4e57-b246-c32f2db61537
# ╠═f44b6ef0-3efe-48cd-b54d-86c0008d5ebe
# ╠═38cbf5f8-39bf-40b7-8b65-92d193b00f6e
# ╠═53f75c9c-3894-4d21-b686-e63be11cca46
# ╠═7ff4a1f2-b92d-4a61-a6e7-f3fd667d6b19
# ╠═a98da553-0174-4bde-938c-a0b89db13c7b
# ╠═fd036cc3-561b-424f-99fe-c8250328a250
# ╠═1e041747-6cb0-426a-9a5e-ae382e262356
# ╠═5292a470-7ca6-4da6-a0da-7d6dee290256
# ╠═6732d63e-9096-49d7-a50d-6bde507235ba
# ╠═f20cbad5-26b7-4b73-bdf8-b8bec9453628
# ╠═4858abb5-ccbf-4945-ad7a-527b6d6fbeb7
# ╠═14e7edfe-4616-4241-810c-e2685edee697
# ╠═6e234afd-c12e-47d6-9642-43c79f20a3f0
# ╠═9b59c5bb-8c22-46fc-b571-1b32eb390226
# ╠═5d973c45-631e-4f22-bdbb-b2fdb03a864f
# ╠═371a8358-91d9-4a2c-8eb3-fbdaaa6b2ccc
# ╠═842c416c-4140-44aa-aca5-9c78bae2ccde
# ╠═4834b7a4-bf3a-4f24-ab0d-16150679b3ec
# ╠═3624872a-d4d9-4c42-8478-26d2f03af2b8
# ╠═484cb38f-2e5e-4899-b936-23210c83992c
# ╠═ae5fe01a-8209-4ac1-9fd9-418d81700867
# ╠═1dfa1dad-d890-4559-b5c9-9f8ff5cba5c8
# ╠═49ea583c-be6f-41f8-8d34-daec8245444c
# ╠═fa0c1b44-40d1-4796-a300-f68bd3189e42
# ╠═a73b9f54-0d62-4285-bece-22a2a3d7b6e1
# ╠═2e53930d-367b-4ddd-8c0c-052b17f5028f
# ╠═c136fcd7-e9d0-47c6-afb0-c55275852cc1
# ╠═505fa378-b76f-485c-aebc-941693cf652d
# ╠═24520f93-2bc7-44e5-be45-5da8ed2897c4
# ╠═753ab3ea-e1c4-4f89-9ac6-dd3608984d6f
# ╠═a97464c1-3a99-4d4f-9c2f-4bf7af369786
# ╠═bf48a76f-0af0-4c77-9e00-b874e010c53d
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
