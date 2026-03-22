
OUTPUT_NPZ_DIR=data/no_cub_loss_80epoch_npz # path to the folder where to save the output .npz files
MODEL_CHECKPOINT_DIR=checkpoints/superdec_no_cuboid_loss # checkpoints/shapenet because it's testing on shapenet testing set

# Convert results to NPZ format
python superdec/evaluate/to_npz.py checkpoints_folder="$MODEL_CHECKPOINT_DIR" output_dir="$OUTPUT_NPZ_DIR" 

# Visualize results using viser
python superdec/visualization/object_visualizer.py npz_folder="$OUTPUT_NPZ_DIR"