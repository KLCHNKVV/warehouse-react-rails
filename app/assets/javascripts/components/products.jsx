class Products extends React.Component {
    constructor(props) {
        super(props);
        this.state =
            {
                products: this.props.data,
                search: ''
            };

        Products.defaultProps =
            {
                products: [this.state.products]
            }
    }

    updateSearch(event)
    {
        this.setState({search: event.target.value.substr(0,20)});
    }


    render() {
        let filteredProducts = this.state.products.filter
        (
            (product) => {
                return product.brand.toLowerCase().indexOf(this.state.search.toLowerCase()) !== -1;
            }
        );
        var product;
        return <div className={'Products'}>
            <input type={'text'} id={'filter-area'} className={'form-control'} placeholder={'Type brand for search...'}
                value={this.state.search}
                onChange={this.updateSearch.bind(this)}/>
            <h2 className={'title'}> </h2>
            <table className={'table table-bordered'}>
                <thead>
                <tr>
                    <th>Product type</th>
                    <th>Brand</th>
                    <th>Product model name</th>
                    <th>Price ($)</th>
                    <th>Image</th>
                </tr>
                </thead>
                <tbody>
                {
                    (function () {
                        var i, len, ref, results;
                        ref = filteredProducts;
                        results = [];
                        for (i = 0, len = ref.length; i < len; i++) {
                            product = ref[i];
                            results.push(React.createElement(Product, {
                                key: product.id,
                                product: product
                            }));
                        }
                        return results;
                    }).call(this)
                }
                </tbody>
            </table>
        </div>
    }

}