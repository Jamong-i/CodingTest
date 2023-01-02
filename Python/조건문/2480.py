dice_ls = sorted(list(map(int, input().split())))

if dice_ls[0] == dice_ls[2]:
    print(10000 + (dice_ls[0] * 1000))
elif dice_ls[0] == dice_ls[1] or dice_ls[1] == dice_ls[2]:
    print(1000 + (dice_ls[1] * 100))
else:
    print(dice_ls[2] * 100)

