.class public Lgnu/lists/PositionManager;
.super Ljava/lang/Object;
.source "PositionManager.java"


# static fields
.field static final manager:Lgnu/lists/PositionManager;


# instance fields
.field freeListHead:I

.field ivals:[I

.field positions:[Lgnu/lists/SeqPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lgnu/lists/PositionManager;

    invoke-direct {v0}, Lgnu/lists/PositionManager;-><init>()V

    sput-object v0, Lgnu/lists/PositionManager;->manager:Lgnu/lists/PositionManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x32

    new-array v1, v0, [Lgnu/lists/SeqPosition;

    .line 19
    iput-object v1, p0, Lgnu/lists/PositionManager;->positions:[Lgnu/lists/SeqPosition;

    new-array v0, v0, [I

    .line 20
    iput-object v0, p0, Lgnu/lists/PositionManager;->ivals:[I

    const/4 v1, -0x1

    .line 21
    iput v1, p0, Lgnu/lists/PositionManager;->freeListHead:I

    .line 57
    array-length v1, v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2, v1}, Lgnu/lists/PositionManager;->addToFreeList([III)V

    return-void
.end method

.method private addToFreeList([III)V
    .locals 2

    .line 25
    iget v0, p0, Lgnu/lists/PositionManager;->freeListHead:I

    :goto_0
    if-ge p2, p3, :cond_0

    .line 28
    aput v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    move v1, v0

    move v0, p2

    move p2, v1

    goto :goto_0

    .line 31
    :cond_0
    iput v0, p0, Lgnu/lists/PositionManager;->freeListHead:I

    return-void
.end method

.method private getFreeSlot()I
    .locals 6

    .line 36
    iget v0, p0, Lgnu/lists/PositionManager;->freeListHead:I

    if-gez v0, :cond_0

    .line 39
    iget-object v0, p0, Lgnu/lists/PositionManager;->positions:[Lgnu/lists/SeqPosition;

    array-length v1, v0

    mul-int/lit8 v2, v1, 0x2

    .line 40
    new-array v3, v2, [Lgnu/lists/SeqPosition;

    .line 41
    new-array v4, v2, [I

    const/4 v5, 0x0

    .line 42
    invoke-static {v0, v5, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    iget-object v0, p0, Lgnu/lists/PositionManager;->ivals:[I

    invoke-static {v0, v5, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    iput-object v3, p0, Lgnu/lists/PositionManager;->positions:[Lgnu/lists/SeqPosition;

    .line 45
    iput-object v4, p0, Lgnu/lists/PositionManager;->ivals:[I

    .line 46
    invoke-direct {p0, v4, v1, v2}, Lgnu/lists/PositionManager;->addToFreeList([III)V

    .line 47
    iget v0, p0, Lgnu/lists/PositionManager;->freeListHead:I

    .line 49
    :cond_0
    iget-object v1, p0, Lgnu/lists/PositionManager;->ivals:[I

    aget v1, v1, v0

    iput v1, p0, Lgnu/lists/PositionManager;->freeListHead:I

    return v0
.end method

.method public static getPositionObject(I)Lgnu/lists/SeqPosition;
    .locals 2

    .line 12
    sget-object v0, Lgnu/lists/PositionManager;->manager:Lgnu/lists/PositionManager;

    .line 13
    monitor-enter v0

    .line 15
    :try_start_0
    iget-object v1, v0, Lgnu/lists/PositionManager;->positions:[Lgnu/lists/SeqPosition;

    aget-object p0, v1, p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public declared-synchronized register(Lgnu/lists/SeqPosition;)I
    .locals 2

    monitor-enter p0

    .line 62
    :try_start_0
    invoke-direct {p0}, Lgnu/lists/PositionManager;->getFreeSlot()I

    move-result v0

    .line 63
    iget-object v1, p0, Lgnu/lists/PositionManager;->positions:[Lgnu/lists/SeqPosition;

    aput-object p1, v1, v0

    .line 64
    iget-object p1, p0, Lgnu/lists/PositionManager;->ivals:[I

    const/4 v1, -0x1

    aput v1, p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized release(I)V
    .locals 3

    monitor-enter p0

    .line 70
    :try_start_0
    iget-object v0, p0, Lgnu/lists/PositionManager;->positions:[Lgnu/lists/SeqPosition;

    aget-object v0, v0, p1

    .line 71
    instance-of v1, v0, Lgnu/lists/ExtPosition;

    if-eqz v1, :cond_0

    .line 72
    move-object v1, v0

    check-cast v1, Lgnu/lists/ExtPosition;

    const/4 v2, -0x1

    iput v2, v1, Lgnu/lists/ExtPosition;->position:I

    .line 73
    :cond_0
    iget-object v1, p0, Lgnu/lists/PositionManager;->positions:[Lgnu/lists/SeqPosition;

    const/4 v2, 0x0

    aput-object v2, v1, p1

    .line 74
    iget-object v1, p0, Lgnu/lists/PositionManager;->ivals:[I

    iget v2, p0, Lgnu/lists/PositionManager;->freeListHead:I

    aput v2, v1, p1

    .line 75
    iput p1, p0, Lgnu/lists/PositionManager;->freeListHead:I

    .line 76
    invoke-virtual {v0}, Lgnu/lists/SeqPosition;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
