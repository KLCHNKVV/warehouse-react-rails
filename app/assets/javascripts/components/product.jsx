class Product extends React.Component {
    render() {
        return <tr>
                <td>{this.props.product.product_type}</td>
                <td>{this.props.product.brand}</td>
                <td>{this.props.product.product_model_name}</td>
                <td>{this.props.product.price}</td>
                <td>{<img src={this.props.product.absolute_url} id={'product-image'} className={'img img-rounded'}/>}</td>
        </tr>
    }
}