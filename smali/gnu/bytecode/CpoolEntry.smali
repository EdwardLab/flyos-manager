.class public abstract Lgnu/bytecode/CpoolEntry;
.super Ljava/lang/Object;
.source "CpoolEntry.java"


# instance fields
.field hash:I

.field public index:I

.field next:Lgnu/bytecode/CpoolEntry;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/ConstantPool;I)V
    .locals 6

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p2, p0, Lgnu/bytecode/CpoolEntry;->hash:I

    .line 55
    iget-boolean p2, p1, Lgnu/bytecode/ConstantPool;->locked:Z

    if-nez p2, :cond_5

    .line 57
    iget p2, p1, Lgnu/bytecode/ConstantPool;->count:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lgnu/bytecode/ConstantPool;->count:I

    iput p2, p0, Lgnu/bytecode/CpoolEntry;->index:I

    .line 60
    iget-object p2, p1, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    if-nez p2, :cond_0

    const/16 p2, 0x3c

    new-array p2, p2, [Lgnu/bytecode/CpoolEntry;

    .line 61
    iput-object p2, p1, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    goto :goto_1

    .line 62
    :cond_0
    iget p2, p0, Lgnu/bytecode/CpoolEntry;->index:I

    iget-object v0, p1, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    array-length v0, v0

    if-lt p2, v0, :cond_2

    .line 64
    iget-object p2, p1, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    array-length p2, p2

    .line 65
    iget-object v0, p1, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    .line 66
    new-array v0, v0, [Lgnu/bytecode/CpoolEntry;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    .line 68
    iget-object v2, p1, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    aget-object v2, v2, v1

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    :cond_1
    iput-object v0, p1, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    .line 73
    :cond_2
    :goto_1
    iget-object p2, p1, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    if-eqz p2, :cond_3

    iget p2, p0, Lgnu/bytecode/CpoolEntry;->index:I

    int-to-double v0, p2

    const-wide v2, 0x3fe3333333333333L    # 0.6

    iget-object p2, p1, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    array-length p2, p2

    int-to-double v4, p2

    mul-double v4, v4, v2

    cmpl-double p2, v0, v4

    if-ltz p2, :cond_4

    .line 74
    :cond_3
    invoke-virtual {p1}, Lgnu/bytecode/ConstantPool;->rehash()V

    .line 77
    :cond_4
    iget-object p2, p1, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    iget v0, p0, Lgnu/bytecode/CpoolEntry;->index:I

    aput-object p0, p2, v0

    .line 79
    invoke-virtual {p0, p1}, Lgnu/bytecode/CpoolEntry;->add_hashed(Lgnu/bytecode/ConstantPool;)V

    return-void

    .line 56
    :cond_5
    new-instance p1, Ljava/lang/Error;

    const-string p2, "adding new entry to locked contant pool"

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method add_hashed(Lgnu/bytecode/ConstantPool;)V
    .locals 2

    .line 44
    iget-object p1, p1, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    .line 45
    iget v0, p0, Lgnu/bytecode/CpoolEntry;->hash:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    array-length v1, p1

    rem-int/2addr v0, v1

    .line 46
    aget-object v1, p1, v0

    iput-object v1, p0, Lgnu/bytecode/CpoolEntry;->next:Lgnu/bytecode/CpoolEntry;

    .line 47
    aput-object p0, p1, v0

    return-void
.end method

.method public getIndex()I
    .locals 1

    .line 26
    iget v0, p0, Lgnu/bytecode/CpoolEntry;->index:I

    return v0
.end method

.method public abstract getTag()I
.end method

.method public hashCode()I
    .locals 1

    .line 34
    iget v0, p0, Lgnu/bytecode/CpoolEntry;->hash:I

    return v0
.end method

.method public abstract print(Lgnu/bytecode/ClassTypeWriter;I)V
.end method

.method abstract write(Ljava/io/DataOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
