python3 val.py -dists "../../vehicle_reid_experiments/res50/checkpoints/res50_best_dist.pkl" "../../vehicle_reid_experiments/res50attr/checkpoints/res50attr_best_dist.pkl" "../../vehicle_reid_experiments/hrnetw18c/checkpoints/hrnetw18c_best_dist.pkl" "../../vehicle_reid_experiments/dense161bs/checkpoints/dense161bs_best_dist.pkl" "../../vehicle_reid_experiments/dense161/checkpoints/dense161_best_dist.pkl"  -querys "../../vehicle_reid_experiments/res50/checkpoints/res50_best_query_f.pkl" "../../vehicle_reid_experiments/res50attr/checkpoints/res50attr_best_query_f.pkl" "../../vehicle_reid_experiments/hrnetw18c/checkpoints/hrnetw18c_best_query_f.pkl"  "../../vehicle_reid_experiments/dense161bs/checkpoints/dense161bs_best_query_f.pkl" "../../vehicle_reid_experiments/dense161/checkpoints/dense161_best_query_f.pkl" -gallerys "../../vehicle_reid_experiments/res50/checkpoints/res50_best_gallery_f.pkl" "../../vehicle_reid_experiments/res50attr/checkpoints/res50attr_best_gallery_f.pkl" "../../vehicle_reid_experiments/hrnetw18c/checkpoints/hrnetw18c_best_gallery_f.pkl" "../../vehicle_reid_experiments/dense161bs/checkpoints/dense161bs_best_gallery_f.pkl" "../../vehicle_reid_experiments/dense161/checkpoints/dense161_best_gallery_f.pkl" -bias 1300 -group_threhold 0.05 -result_name ensemble1