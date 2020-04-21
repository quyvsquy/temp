# Usage:
- Move to the directory where the python file is located
- `docker run -it -v "$PWD":/app quyvsquy/py3_tensor_num_mat_u"`
- Run file python with: `python3 fileName.py`
# For matplotlib.pyplot, 2 option
1. Use `plt.savefig("nameSave")`
2. Use jupyter notebook but all image will show in different location
    + Expose port 8888 before run: `docker run -it -v -p 8888:8888 "$PWD":/app`
    + Install with: `python3 -m pip install notebook` or more in [link](https://jupyter.org/install)
    + Add `%matplotlib inline` in the first cell of the notebook
    + Run jupyter notebook: `jupyter notebook --ip 0.0.0.0 --no-browser --allow-root`
