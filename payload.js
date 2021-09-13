
function payload(name,lastname,age,dep) {
    return {
            first_name: name,
            last_name: lastname,
            age: age,
            department: dep
    };
}

module.exports = payload;