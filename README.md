# ElixJson

Json comprises of these simple parts.

```json
{
    "numbers": 1.0001,
    "boolean": true,
    "strings": "string",
    "nested_objects": {
        "lists": [1,2,3]
    }
}
```

Each of which can be represented in elixir syntax:

```elixir
[
    numbers: 1.0001,
    booleans: true,
    strings: "string",
    nested_objects: [
        lists: [1,2,3]
    ]
]
```

## Notes:

    iex(12)> a
    [numbers: 1.00009999999999998899, booleans: true, strings: "string", nested_objects: [lists: [1,2,3]]]
    iex(13)> Keyword.keys(a)
    [:numbers,:booleans,:strings,:nested_objects]
    iex(14)> Keyword.values(a)
    [1.00009999999999998899,true,"string",[lists: [1,2,3]]]
    iex(15)> is_list(a[:nested_objects])
    true
    iex(16)> is_list(a[:booleans])
    false
