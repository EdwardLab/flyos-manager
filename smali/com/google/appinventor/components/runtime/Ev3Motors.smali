.class public Lcom/google/appinventor/components/runtime/Ev3Motors;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EV3:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that provides both high- and low-level interfaces to a LEGO MINDSTORMS EV3 robot, with functions that can control the motors."
    iconName = "images/legoMindstormsEv3.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private I5ykmeJTgzyaiiAtvMLW8fRCQIZ9OEp56mK3swW1OQk12Icvz43SQQl0b809z20Q:Z

.field private PnDqXmvCFreSiRVUA0g9XAstwDhIMcbRjkGmb4HpU47gHx12PSApiyWiV1UWvlkR:Z

.field private W6T0KLh0HOscnxSkBKrzTm675pNrsPjnoOd2dFOC45d2E2zbErFUDn8t6kBqwFa:Z

.field private bVeTzqSexGvEaauwiYAVDIi0rEKwP38hsr4zIk14QJ70YrYaNw4t0FSa76teZ34b:I

.field private hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:D

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/os/Handler;

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/Runnable;

.field private kiRcALaZrUgDipBGGRCywmcwXV6owEI5LzNEBeYdXQPOcCNVgoIiuO1Q0ZEin4tA:Z

.field private lAud5RKvmdA6itPf25e72aHL9NdNsPWhE0ialf61Le8xYV1HI3NTt1XJfRo1B6Y:Z

.field private zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 5

    const-string v0, "Ev3Motors"

    .line 57
    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 42
    iput p1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:I

    const-wide v0, 0x401147ae147ae148L    # 4.32

    .line 43
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:D

    const/4 v2, 0x0

    .line 44
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->PnDqXmvCFreSiRVUA0g9XAstwDhIMcbRjkGmb4HpU47gHx12PSApiyWiV1UWvlkR:Z

    .line 45
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->I5ykmeJTgzyaiiAtvMLW8fRCQIZ9OEp56mK3swW1OQk12Icvz43SQQl0b809z20Q:Z

    .line 46
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->lAud5RKvmdA6itPf25e72aHL9NdNsPWhE0ialf61Le8xYV1HI3NTt1XJfRo1B6Y:Z

    .line 47
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->W6T0KLh0HOscnxSkBKrzTm675pNrsPjnoOd2dFOC45d2E2zbErFUDn8t6kBqwFa:Z

    .line 50
    iput v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->bVeTzqSexGvEaauwiYAVDIi0rEKwP38hsr4zIk14QJ70YrYaNw4t0FSa76teZ34b:I

    .line 51
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->kiRcALaZrUgDipBGGRCywmcwXV6owEI5LzNEBeYdXQPOcCNVgoIiuO1Q0ZEin4tA:Z

    .line 58
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/os/Handler;

    .line 59
    new-instance v3, Lcom/google/appinventor/components/runtime/Ev3Motors$1;

    invoke-direct {v3, p0}, Lcom/google/appinventor/components/runtime/Ev3Motors$1;-><init>(Lcom/google/appinventor/components/runtime/Ev3Motors;)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/Runnable;

    .line 80
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string v3, "ABC"

    .line 82
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/Ev3Motors;->MotorPorts(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->StopBeforeDisconnect(Z)V

    .line 84
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->EnableSpeedRegulation(Z)V

    .line 85
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Ev3Motors;->ReverseDirection(Z)V

    .line 86
    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->WheelDiameter(D)V

    .line 87
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Ev3Motors;->TachoCountChangedEventEnabled(Z)V

    return-void
.end method

.method private static B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(I)I
    .locals 1

    const/16 v0, -0x64

    if-ge p0, v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x64

    if-le p0, v0, :cond_1

    return v0

    :cond_1
    return p0
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/Ev3Motors;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->bVeTzqSexGvEaauwiYAVDIi0rEKwP38hsr4zIk14QJ70YrYaNw4t0FSa76teZ34b:I

    return p0
.end method

.method private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/lang/String;II)V
    .locals 7

    if-ltz p2, :cond_0

    const/16 v0, 0xf

    if-gt p2, v0, :cond_0

    .line 628
    invoke-static {p3}, Lcom/google/appinventor/components/runtime/Ev3Motors;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(I)I

    move-result p3

    const/16 v0, -0x5b

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 635
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v5, v6

    const/4 v4, 0x1

    int-to-byte p2, p2

    .line 636
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    aput-object p2, v5, v4

    const/4 p2, 0x2

    int-to-byte p3, p3

    .line 637
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p3

    aput-object p3, v5, p2

    const-string v4, "ccc"

    .line 630
    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object p2

    .line 638
    invoke-virtual {p0, p1, p2, v6}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B

    return-void

    .line 626
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/lang/String;IIIZ)V
    .locals 7

    if-ltz p2, :cond_0

    const/16 v0, 0xf

    if-gt p2, v0, :cond_0

    if-ltz p4, :cond_0

    .line 510
    invoke-static {p3}, Lcom/google/appinventor/components/runtime/Ev3Motors;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(I)I

    move-result p3

    const/16 v0, -0x52

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 517
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v5, v6

    const/4 v4, 0x1

    int-to-byte p2, p2

    .line 518
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    aput-object p2, v5, v4

    const/4 p2, 0x2

    int-to-byte p3, p3

    .line 519
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p3

    aput-object p3, v5, p2

    const/4 p2, 0x3

    .line 520
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v5, p2

    const/4 p2, 0x4

    .line 521
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v5, p2

    const/4 p2, 0x5

    .line 522
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v5, p2

    const/4 p2, 0x6

    int-to-byte p3, p5

    .line 523
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p3

    aput-object p3, v5, p2

    const-string v4, "ccccccc"

    .line 512
    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object p2

    .line 524
    invoke-virtual {p0, p1, p2, v6}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B

    return-void

    .line 508
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3Motors;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:I

    return p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3Motors;I)I
    .locals 0

    .line 37
    iput p1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->bVeTzqSexGvEaauwiYAVDIi0rEKwP38hsr4zIk14QJ70YrYaNw4t0FSa76teZ34b:I

    return p1
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3Motors;Ljava/lang/String;I)I
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Ev3Motors;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;I)I
    .locals 10

    if-ltz p2, :cond_5

    const/16 v0, 0xf

    if-gt p2, v0, :cond_5

    add-int/lit8 v0, p2, -0x1

    xor-int/2addr p2, v0

    const/4 v0, 0x1

    add-int/2addr p2, v0

    ushr-int/2addr p2, v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq p2, v0, :cond_3

    if-eq p2, v2, :cond_2

    const/4 v4, 0x4

    if-eq p2, v4, :cond_1

    const/16 v4, 0x8

    if-ne p2, v4, :cond_0

    const/4 p2, 0x3

    goto :goto_0

    .line 684
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    const/4 p2, 0x2

    goto :goto_0

    :cond_2
    const/4 p2, 0x1

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    :goto_0
    const/16 v4, -0x4d

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x0

    new-array v9, v1, [Ljava/lang/Object;

    .line 692
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v9, v3

    int-to-byte p2, p2

    .line 693
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    aput-object p2, v9, v0

    .line 694
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    aput-object p2, v9, v2

    const-string v8, "ccg"

    .line 687
    invoke-static/range {v4 .. v9}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object p2

    .line 695
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B

    move-result-object p1

    if-eqz p1, :cond_4

    .line 697
    array-length p2, p1

    const/4 v0, 0x5

    if-ne p2, v0, :cond_4

    aget-byte p2, p1, v3

    if-ne p2, v2, :cond_4

    const-string p2, "xi"

    .line 698
    invoke-static {p2, p1}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->unpack(Ljava/lang/String;[B)[Ljava/lang/Object;

    move-result-object p1

    .line 699
    aget-object p1, p1, v3

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_4
    return v3

    .line 660
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3Motors;)Landroid/os/Handler;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/os/Handler;

    return-object p0
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;II)V
    .locals 8

    if-ltz p2, :cond_0

    const/16 v0, 0xf

    if-gt p2, v0, :cond_0

    const/4 v0, -0x1

    if-lt p3, v0, :cond_0

    const/4 v0, 0x1

    if-gt p3, v0, :cond_0

    const/16 v1, -0x59

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 618
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v6, v7

    int-to-byte p2, p2

    .line 619
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    aput-object p2, v6, v0

    const/4 p2, 0x2

    int-to-byte p3, p3

    .line 620
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p3

    aput-object p3, v6, p2

    const-string v5, "ccc"

    .line 613
    invoke-static/range {v1 .. v6}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object p2

    .line 621
    invoke-virtual {p0, p1, p2, v7}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B

    return-void

    .line 611
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;IIIIZ)V
    .locals 7

    if-ltz p2, :cond_0

    const/16 v0, 0xf

    if-gt p2, v0, :cond_0

    const/16 v0, -0xc8

    if-lt p4, v0, :cond_0

    const/16 v0, 0xc8

    if-gt p4, v0, :cond_0

    .line 531
    invoke-static {p3}, Lcom/google/appinventor/components/runtime/Ev3Motors;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(I)I

    move-result p3

    const/16 v0, -0x50

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 538
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v5, v6

    const/4 v4, 0x1

    int-to-byte p2, p2

    .line 539
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    aput-object p2, v5, v4

    const/4 p2, 0x2

    int-to-byte p3, p3

    .line 540
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p3

    aput-object p3, v5, p2

    const/4 p2, 0x3

    int-to-short p3, p4

    .line 541
    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p3

    aput-object p3, v5, p2

    const/4 p2, 0x4

    .line 542
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v5, p2

    const/4 p2, 0x5

    int-to-byte p3, p6

    .line 543
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p3

    aput-object p3, v5, p2

    const-string v4, "cccccc"

    .line 533
    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object p2

    .line 544
    invoke-virtual {p0, p1, p2, v6}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B

    return-void

    .line 529
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;IIIZ)V
    .locals 7

    if-ltz p2, :cond_0

    const/16 v0, 0xf

    if-gt p2, v0, :cond_0

    if-ltz p4, :cond_0

    .line 489
    invoke-static {p3}, Lcom/google/appinventor/components/runtime/Ev3Motors;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(I)I

    move-result p3

    const/16 v0, -0x54

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 496
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v5, v6

    const/4 v4, 0x1

    int-to-byte p2, p2

    .line 497
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    aput-object p2, v5, v4

    const/4 p2, 0x2

    int-to-byte p3, p3

    .line 498
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p3

    aput-object p3, v5, p2

    const/4 p2, 0x3

    .line 499
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v5, p2

    const/4 p2, 0x4

    .line 500
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v5, p2

    const/4 p2, 0x5

    .line 501
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v5, p2

    const/4 p2, 0x6

    int-to-byte p3, p5

    .line 502
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p3

    aput-object p3, v5, p2

    const-string v4, "ccccccc"

    .line 491
    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object p2

    .line 503
    invoke-virtual {p0, p1, p2, v6}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B

    return-void

    .line 487
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;IZ)V
    .locals 7

    if-ltz p2, :cond_0

    const/16 v0, 0xf

    if-gt p2, v0, :cond_0

    const/16 v1, -0x5d

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x3

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 479
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v6, v0

    const/4 v5, 0x1

    int-to-byte p2, p2

    .line 480
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    aput-object p2, v6, v5

    const/4 p2, 0x2

    .line 481
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p3

    aput-object p3, v6, p2

    const-string v5, "ccc"

    .line 474
    invoke-static/range {v1 .. v6}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object p2

    .line 482
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B

    return-void

    .line 472
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(I)Z
    .locals 1

    if-eqz p0, :cond_0

    add-int/lit8 v0, p0, -0x1

    xor-int/2addr v0, p0

    not-int v0, v0

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3Motors;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->W6T0KLh0HOscnxSkBKrzTm675pNrsPjnoOd2dFOC45d2E2zbErFUDn8t6kBqwFa:Z

    return p0
.end method

.method private wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Ljava/lang/String;IIIZ)V
    .locals 7

    if-ltz p2, :cond_0

    const/16 v0, 0xf

    if-gt p2, v0, :cond_0

    if-ltz p4, :cond_0

    .line 572
    invoke-static {p3}, Lcom/google/appinventor/components/runtime/Ev3Motors;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(I)I

    move-result p3

    const/16 v0, -0x51

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 579
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v5, v6

    const/4 v4, 0x1

    int-to-byte p2, p2

    .line 580
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    aput-object p2, v5, v4

    const/4 p2, 0x2

    int-to-byte p3, p3

    .line 581
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p3

    aput-object p3, v5, p2

    const/4 p2, 0x3

    .line 582
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v5, p2

    const/4 p2, 0x4

    .line 583
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v5, p2

    const/4 p2, 0x5

    .line 584
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v5, p2

    const/4 p2, 0x6

    int-to-byte p3, p5

    .line 585
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p3

    aput-object p3, v5, p2

    const-string v4, "ccccccc"

    .line 574
    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object p2

    .line 586
    invoke-virtual {p0, p1, p2, v6}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B

    return-void

    .line 570
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public EnableSpeedRegulation(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 167
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->I5ykmeJTgzyaiiAtvMLW8fRCQIZ9OEp56mK3swW1OQk12Icvz43SQQl0b809z20Q:Z

    return-void
.end method

.method public EnableSpeedRegulation()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The robot adjusts the power to maintain the speed if speed regulation is enabled."
    .end annotation

    .line 176
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->I5ykmeJTgzyaiiAtvMLW8fRCQIZ9OEp56mK3swW1OQk12Icvz43SQQl0b809z20Q:Z

    return v0
.end method

.method public GetTachoCount()I
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the current tacho count."
    .end annotation

    const-string v0, "GetTachoCount"

    .line 419
    :try_start_0
    iget v1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:I

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 421
    :catch_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0xc1f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, p0, v0, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return v4
.end method

.method public MotorPorts()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The motor ports that the motors are connected to. The ports are specified by a sequence of port letters."
        userVisible = false
    .end annotation

    .line 97
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:I

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3Motors;->bitFieldToMotorPortLetters(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public MotorPorts(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "ABC"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 109
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortLettersToBitField(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 111
    :catch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0xc20

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "MotorPorts"

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public ResetTachoCount()V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the current tacho count to zero."
    .end annotation

    const-string v0, "ResetTachoCount"

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 406
    :try_start_0
    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:I

    if-ltz v3, :cond_0

    const/16 v4, 0xf

    if-gt v3, v4, :cond_0

    const/16 v5, -0x4e

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "cc"

    const/4 v4, 0x2

    new-array v10, v4, [Ljava/lang/Object;

    .line 2714
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v10, v2

    int-to-byte v3, v3

    .line 2715
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v10, v1

    .line 2709
    invoke-static/range {v5 .. v10}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v3

    .line 2716
    invoke-virtual {p0, v0, v3, v2}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B

    return-void

    .line 2707
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    :catch_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v4, 0xc1f

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-virtual {v3, p0, v0, v4, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public ReverseDirection(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    const-string v0, "ReverseDirection"

    const/4 v1, 0x1

    .line 144
    :try_start_0
    iget v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:I

    if-eqz p1, :cond_0

    const/4 v3, -0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    invoke-direct {p0, v0, v2, v3}, Lcom/google/appinventor/components/runtime/Ev3Motors;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;II)V

    .line 145
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->PnDqXmvCFreSiRVUA0g9XAstwDhIMcbRjkGmb4HpU47gHx12PSApiyWiV1UWvlkR:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 147
    :catch_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0xc1f

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    invoke-virtual {p1, p0, v0, v2, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public ReverseDirection()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "It specifies if the direction of the motors is reversed."
    .end annotation

    .line 157
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->PnDqXmvCFreSiRVUA0g9XAstwDhIMcbRjkGmb4HpU47gHx12PSApiyWiV1UWvlkR:Z

    return v0
.end method

.method public RotateInDistance(IDZ)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Rotate the motors in a distance."
    .end annotation

    const-string v6, "RotateInDistance"

    const-wide v0, 0x4076800000000000L    # 360.0

    mul-double p2, p2, v0

    .line 275
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:D

    div-double/2addr p2, v0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p2, v0

    double-to-int v4, p2

    .line 278
    :try_start_0
    iget-boolean p2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->I5ykmeJTgzyaiiAtvMLW8fRCQIZ9OEp56mK3swW1OQk12Icvz43SQQl0b809z20Q:Z

    if-eqz p2, :cond_0

    .line 279
    iget v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:I

    move-object v0, p0

    move-object v1, v6

    move v3, p1

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/Ev3Motors;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/lang/String;IIIZ)V

    return-void

    .line 281
    :cond_0
    iget v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:I

    move-object v0, p0

    move-object v1, v6

    move v3, p1

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/Ev3Motors;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;IIIZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 283
    :catch_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 p2, 0xc1f

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object v6, p3, p4

    invoke-virtual {p1, p0, v6, p2, p3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public RotateInDuration(IIZ)V
    .locals 16
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Rotate the motors in a period of time."
    .end annotation

    move-object/from16 v6, p0

    const-string v7, "RotateInDuration"

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 260
    :try_start_0
    iget-boolean v0, v6, Lcom/google/appinventor/components/runtime/Ev3Motors;->I5ykmeJTgzyaiiAtvMLW8fRCQIZ9OEp56mK3swW1OQk12Icvz43SQQl0b809z20Q:Z

    if-eqz v0, :cond_0

    .line 261
    iget v2, v6, Lcom/google/appinventor/components/runtime/Ev3Motors;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:I

    move-object/from16 v0, p0

    move-object v1, v7

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/Ev3Motors;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Ljava/lang/String;IIIZ)V

    return-void

    .line 263
    :cond_0
    iget v0, v6, Lcom/google/appinventor/components/runtime/Ev3Motors;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:I

    if-ltz v0, :cond_2

    const/16 v1, 0xf

    if-gt v0, v1, :cond_2

    if-ltz p2, :cond_2

    .line 2551
    invoke-static/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(I)I

    move-result v1

    const/16 v10, -0x53

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v14, "ccccccc"

    const/4 v2, 0x7

    new-array v15, v2, [Ljava/lang/Object;

    .line 2558
    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v15, v9

    int-to-byte v0, v0

    .line 2559
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    aput-object v0, v15, v8

    const/4 v0, 0x2

    int-to-byte v1, v1

    .line 2560
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v15, v0

    const/4 v0, 0x3

    .line 2561
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v15, v0

    const/4 v0, 0x4

    .line 2562
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v15, v0

    const/4 v0, 0x5

    .line 2563
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v15, v0

    const/4 v0, 0x6

    if-eqz p3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    int-to-byte v1, v1

    .line 2564
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v15, v0

    .line 2553
    invoke-static/range {v10 .. v15}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v0

    .line 2565
    invoke-virtual {v6, v7, v0, v9}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B

    return-void

    .line 2549
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :catch_0
    iget-object v0, v6, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0xc1f

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v7, v2, v9

    invoke-virtual {v0, v6, v7, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public RotateInTachoCounts(IIZ)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Rotate the motors in a number of tacho counts."
    .end annotation

    const-string v6, "RotateInTachoCounts"

    .line 244
    :try_start_0
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->I5ykmeJTgzyaiiAtvMLW8fRCQIZ9OEp56mK3swW1OQk12Icvz43SQQl0b809z20Q:Z

    if-eqz v0, :cond_0

    .line 245
    iget v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:I

    move-object v0, p0

    move-object v1, v6

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/Ev3Motors;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/lang/String;IIIZ)V

    return-void

    .line 247
    :cond_0
    iget v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:I

    move-object v0, p0

    move-object v1, v6

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/Ev3Motors;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;IIIZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 249
    :catch_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 p2, 0xc1f

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v6, p3, v0

    invoke-virtual {p1, p0, v6, p2, p3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public RotateIndefinitely(I)V
    .locals 13
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start to rotate the motors."
    .end annotation

    const-string v0, "RotateIndefinitely"

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 226
    :try_start_0
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->I5ykmeJTgzyaiiAtvMLW8fRCQIZ9OEp56mK3swW1OQk12Icvz43SQQl0b809z20Q:Z

    const/4 v4, 0x2

    const/16 v5, 0xf

    if-eqz v3, :cond_1

    .line 227
    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:I

    if-ltz v3, :cond_0

    if-gt v3, v5, :cond_0

    .line 1645
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(I)I

    move-result p1

    const/16 v6, -0x5c

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "ccc"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    .line 1652
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    aput-object v12, v11, v2

    int-to-byte v3, v3

    .line 1653
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v11, v1

    int-to-byte p1, p1

    .line 1654
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    aput-object p1, v11, v4

    .line 1647
    invoke-static/range {v6 .. v11}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object p1

    .line 1655
    invoke-virtual {p0, v0, p1, v2}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B

    goto :goto_0

    .line 1643
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 229
    :cond_1
    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:I

    invoke-direct {p0, v0, v3, p1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/lang/String;II)V

    .line 231
    :goto_0
    iget p1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:I

    if-ltz p1, :cond_2

    if-gt p1, v5, :cond_2

    const/16 v6, -0x5a

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "cc"

    new-array v11, v4, [Ljava/lang/Object;

    .line 2465
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v11, v2

    int-to-byte p1, p1

    .line 2466
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    aput-object p1, v11, v1

    .line 2460
    invoke-static/range {v6 .. v11}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object p1

    .line 2467
    invoke-virtual {p0, v0, p1, v2}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B

    return-void

    .line 2458
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :catch_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0xc1f

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-virtual {p1, p0, v0, v3, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public RotateSyncInDistance(IIIZ)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Rotate the motors at the same speed for a distance in cm."
    .end annotation

    const-string v7, "RotateSyncInDuration"

    int-to-double v0, p2

    const-wide v2, 0x4076800000000000L    # 360.0

    mul-double v0, v0, v2

    .line 314
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:D

    div-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    double-to-int v5, v0

    .line 318
    :try_start_0
    iget p2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:I

    if-eqz p2, :cond_1

    .line 319
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/Ev3Motors;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 320
    iget v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:I

    move-object v0, p0

    move-object v1, v7

    move v3, p1

    move v4, v5

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/Ev3Motors;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/lang/String;IIIZ)V

    return-void

    .line 322
    :cond_0
    iget v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:I

    move-object v0, p0

    move-object v1, v7

    move v3, p1

    move v4, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/appinventor/components/runtime/Ev3Motors;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;IIIIZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    .line 326
    :catch_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 p2, 0xc1f

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object v7, p3, p4

    invoke-virtual {p1, p0, v7, p2, p3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public RotateSyncInDuration(IIIZ)V
    .locals 16
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Rotate the motors at the same speed in a period of time."
    .end annotation

    move-object/from16 v6, p0

    const-string v7, "RotateSyncInDuration"

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 339
    :try_start_0
    iget v0, v6, Lcom/google/appinventor/components/runtime/Ev3Motors;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:I

    if-eqz v0, :cond_3

    .line 340
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Ev3Motors;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    iget v2, v6, Lcom/google/appinventor/components/runtime/Ev3Motors;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:I

    move-object/from16 v0, p0

    move-object v1, v7

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/Ev3Motors;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Ljava/lang/String;IIIZ)V

    return-void

    .line 343
    :cond_0
    iget v0, v6, Lcom/google/appinventor/components/runtime/Ev3Motors;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:I

    if-ltz v0, :cond_2

    const/16 v1, 0xf

    if-gt v0, v1, :cond_2

    if-ltz p2, :cond_2

    .line 2593
    invoke-static/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(I)I

    move-result v1

    const/16 v10, -0x4f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v14, "cccccc"

    const/4 v2, 0x6

    new-array v15, v2, [Ljava/lang/Object;

    .line 2600
    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v15, v9

    int-to-byte v0, v0

    .line 2601
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    aput-object v0, v15, v8

    const/4 v0, 0x2

    int-to-byte v1, v1

    .line 2602
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v15, v0

    const/4 v0, 0x3

    move/from16 v1, p3

    int-to-short v1, v1

    .line 2603
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    aput-object v1, v15, v0

    const/4 v0, 0x4

    .line 2604
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v15, v0

    const/4 v0, 0x5

    if-eqz p4, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    int-to-byte v1, v1

    .line 2605
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v15, v0

    .line 2595
    invoke-static/range {v10 .. v15}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v0

    .line 2606
    invoke-virtual {v6, v7, v0, v9}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B

    goto :goto_1

    .line 2591
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    return-void

    .line 347
    :catch_0
    iget-object v0, v6, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0xc1f

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v7, v2, v9

    invoke-virtual {v0, v6, v7, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public RotateSyncInTachoCounts(IIIZ)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Rotate the motors at the same speed in a number of tacho counts."
    .end annotation

    const-string v7, "RotateSyncInTachoCounts"

    .line 360
    :try_start_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:I

    if-eqz v0, :cond_1

    .line 361
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Ev3Motors;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    iget v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:I

    move-object v0, p0

    move-object v1, v7

    move v3, p1

    move v4, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/Ev3Motors;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/lang/String;IIIZ)V

    return-void

    .line 364
    :cond_0
    iget v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:I

    move-object v0, p0

    move-object v1, v7

    move v3, p1

    move v4, p3

    move v5, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/appinventor/components/runtime/Ev3Motors;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;IIIIZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    .line 368
    :catch_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 p2, 0xc1f

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object v7, p3, p4

    invoke-virtual {p1, p0, v7, p2, p3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public RotateSyncIndefinitely(II)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start to rotate the motors at the same speed."
    .end annotation

    const-string v7, "RotateSyncIndefinitely"

    .line 296
    :try_start_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:I

    if-eqz v0, :cond_1

    .line 297
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Ev3Motors;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    iget p2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:I

    invoke-direct {p0, v7, p2, p1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/lang/String;II)V

    return-void

    .line 300
    :cond_0
    iget v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, v7

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/appinventor/components/runtime/Ev3Motors;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;IIIIZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    .line 304
    :catch_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 p2, 0xc1f

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v7, v0, v1

    invoke-virtual {p1, p0, v7, p2, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public Stop(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Stop the motors of the robot."
    .end annotation

    const-string v0, "Stop"

    .line 379
    :try_start_0
    iget v1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:I

    invoke-direct {p0, v0, v1, p1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 381
    :catch_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0xc1f

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public StopBeforeDisconnect(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 197
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->lAud5RKvmdA6itPf25e72aHL9NdNsPWhE0ialf61Le8xYV1HI3NTt1XJfRo1B6Y:Z

    return-void
.end method

.method public StopBeforeDisconnect()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether to stop the motor before disconnecting."
    .end annotation

    .line 185
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->lAud5RKvmdA6itPf25e72aHL9NdNsPWhE0ialf61Le8xYV1HI3NTt1XJfRo1B6Y:Z

    return v0
.end method

.method public TachoCountChanged(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when the tacho count has changed."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 431
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "TachoCountChanged"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public TachoCountChangedEventEnabled(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 216
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->W6T0KLh0HOscnxSkBKrzTm675pNrsPjnoOd2dFOC45d2E2zbErFUDn8t6kBqwFa:Z

    return-void
.end method

.method public TachoCountChangedEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the TachoCountChanged event should fire when the angle is changed."
    .end annotation

    .line 206
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->W6T0KLh0HOscnxSkBKrzTm675pNrsPjnoOd2dFOC45d2E2zbErFUDn8t6kBqwFa:Z

    return v0
.end method

.method public ToggleDirection()V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Toggle the direction of motors."
    .end annotation

    const-string v0, "ToggleDirection"

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 392
    :try_start_0
    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:I

    invoke-direct {p0, v0, v3, v2}, Lcom/google/appinventor/components/runtime/Ev3Motors;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;II)V

    .line 393
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->PnDqXmvCFreSiRVUA0g9XAstwDhIMcbRjkGmb4HpU47gHx12PSApiyWiV1UWvlkR:Z

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->PnDqXmvCFreSiRVUA0g9XAstwDhIMcbRjkGmb4HpU47gHx12PSApiyWiV1UWvlkR:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 395
    :catch_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v4, 0xc1f

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-virtual {v3, p0, v0, v4, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public WheelDiameter()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The diameter of the wheels attached on the motors in centimeters."
        userVisible = false
    .end annotation

    .line 132
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:D

    return-wide v0
.end method

.method public WheelDiameter(D)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "4.32"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 122
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:D

    return-void
.end method

.method public beforeDisconnect(Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;)V
    .locals 4

    const-string p1, "beforeDisconnect"

    .line 722
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->lAud5RKvmdA6itPf25e72aHL9NdNsPWhE0ialf61Le8xYV1HI3NTt1XJfRo1B6Y:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 724
    :try_start_0
    iget v1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:I

    invoke-direct {p0, p1, v1, v0}, Lcom/google/appinventor/components/runtime/Ev3Motors;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 726
    :catch_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0xc1f

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v0, v3

    invoke-virtual {v1, p0, p1, v2, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
