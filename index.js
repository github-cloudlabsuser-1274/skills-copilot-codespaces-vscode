const data = [
    [
        { name: "John", age: 28 },
        { name: "Jane", age: 32 }
    ],
    [
        { name: "Bob", age: 24 }
    ]
];

// Extract names from array of arrays
const names = data.flat().map(item => item.name);

console.log(names); // ['John', 'Jane', 'Bob']
