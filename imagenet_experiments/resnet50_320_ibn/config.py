import torchvision.transforms as transforms
import torchvision.datasets as datasets


class Config(object):
    log = './log'  # Path to save log
    checkpoint_path = './checkpoints'  # Path to store checkpoint model
    resume = './checkpoints/latest.pth'  # load checkpoint model
    evaluate = None  # evaluate model path
    train_dataset_path = '/data/ILSVRC2012/train/'
    val_dataset_path = '/data/ILSVRC2012/val/'

    network = "resnet50"
    pretrained = False
    num_classes = 1000
    seed = 0
    input_image_size = 320
    scale = 256 / 224

    train_dataset = datasets.ImageFolder(
        train_dataset_path,
        transforms.Compose([
            transforms.RandomResizedCrop(input_image_size),
            transforms.RandomHorizontalFlip(),
            transforms.ToTensor(),
            transforms.Normalize(mean=[0.485, 0.456, 0.406],
                                 std=[0.229, 0.224, 0.225]),
        ]))
    val_dataset = datasets.ImageFolder(
        val_dataset_path,
        transforms.Compose([
            transforms.Resize(int(input_image_size * scale)),
            transforms.CenterCrop(input_image_size),
            transforms.ToTensor(),
            transforms.Normalize(mean=[0.485, 0.456, 0.406],
                                 std=[0.229, 0.224, 0.225]),
        ]))

    milestones = [30, 60, 90]
    epochs = 100
    batch_size = 256
    accumulation_steps = 1
    lr = 0.1
    weight_decay = 1e-4
    momentum = 0.9
    num_workers = 8
    print_interval = 100
    apex = False
