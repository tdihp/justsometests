python3 /usr/share/bcc/tools/biosnoop > biosnoop.log &
python3 /usr/share/bcc/tools/trace -TKb 1024 -I 'linux/fs.h' 'ext4_free_blocks(void* handle, struct inode * inode, void * bh, unsigned long long block, unsigned long count) "%lx %lu %llu %lu", handle, inode->i_ino, block, count' >trace.ext4_free_blocks.log &

# run kill $(jobs -p)
