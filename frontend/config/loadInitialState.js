export default () => {
	return {
		districts: {
			fetching: false,
			count: 0,
			results: [],
			single: {}
		},
		donations: {
			fetching: false,
			count: 0,
			results: [],
			single: {}
		},
		hospitals: {
			fetching: false,
			count: 0,
			results: [],
			single: {}
		},
		localities: {
			fetching: false,
			count: 0,
			results: [],
			single: {}
		},
		regions: {
			fetching: false,
			count: 0,
			results: [],
			single: {}
		},
		requests: {
			sending: false
		}
	}
}