# Step 3: Basic Text Manipulation

## Instructions

1. Copy File Contents
Copy the contents of `file1.txt` to `file2.txt`:

```sh
cp file1.txt file2.txt
```

2. Replace Text in a File
Replace "Hello" with "Hi" in file2.txt:

```sh
sed -i 's/Hello/Hi/' file2.txt
```

3. Display the Modified File
Display the contents of file2.txt:

```sh
cat file2.txt
```