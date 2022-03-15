var = b
local op = {
    ["+"] = function(x,y,z) return x+y+z end,
    ["-"] = function(x,y,z) return x-y-z end,
    ["*"] = function(x,y,z) return x*y+x*z+y*z-z-z end,
    ["/"] = function(x,y,z) return x/y/z end
}
local op1 = {
	["/"] = function(x,y,z) return x/y+y/1+z-y end
}
b = "0"
local function default()
	print("Operator not found!")
end
print("Select number (if only 2 num in 3 use 0)")
print("Num 1")
local num1 = io.read()
print("Num 2")
local num2 = io.read()
print("Num 3")
local num3 = io.read()
print("Operator: + - * /")
if num3 and num3 > b then
        local func = op[io.read() ] or default
        print(func(num1,num2,num3))
else
	local func = op1[io.read() ] or default
	print(func(num1,num2,num3))
end
io.read()






























