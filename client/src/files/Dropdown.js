let Dropdown = ({ options, selectedValue, onSortChange }) => {

    return (
        <select onChange={e => onSortChange(e.target.value)}>
            {/* doing some destructuring below on options, which is an array of objects */}
            {options.map(({ value }) => {
                return (
                    <option
                        selected={value == selectedValue}
                        value={value}
                    >
                        {value}
                    </option>
                )
            })}
        </select>
    )
}
// the selected={value == selectedValue} line sets the starting, initial value to Hamster

export default Dropdown