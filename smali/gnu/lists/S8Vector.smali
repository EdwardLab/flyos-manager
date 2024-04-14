.class public Lgnu/lists/S8Vector;
.super Lgnu/lists/ByteVector;
.source "S8Vector.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lgnu/lists/ByteVector;-><init>()V

    .line 14
    sget-object v0, Lgnu/lists/ByteVector;->empty:[B

    iput-object v0, p0, Lgnu/lists/S8Vector;->data:[B

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 27
    invoke-direct {p0}, Lgnu/lists/ByteVector;-><init>()V

    .line 28
    new-array v0, p1, [B

    iput-object v0, p0, Lgnu/lists/S8Vector;->data:[B

    .line 29
    iput p1, p0, Lgnu/lists/S8Vector;->size:I

    return-void
.end method

.method public constructor <init>(IB)V
    .locals 1

    .line 18
    invoke-direct {p0}, Lgnu/lists/ByteVector;-><init>()V

    .line 19
    new-array v0, p1, [B

    .line 20
    iput-object v0, p0, Lgnu/lists/S8Vector;->data:[B

    .line 21
    iput p1, p0, Lgnu/lists/S8Vector;->size:I

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    .line 23
    aput-byte p2, v0, p1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lgnu/lists/Sequence;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Lgnu/lists/ByteVector;-><init>()V

    .line 40
    invoke-interface {p1}, Lgnu/lists/Sequence;->size()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lgnu/lists/S8Vector;->data:[B

    .line 41
    invoke-virtual {p0, p1}, Lgnu/lists/S8Vector;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lgnu/lists/ByteVector;-><init>()V

    .line 34
    iput-object p1, p0, Lgnu/lists/S8Vector;->data:[B

    .line 35
    array-length p1, p1

    iput p1, p0, Lgnu/lists/S8Vector;->size:I

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 77
    check-cast p1, Lgnu/lists/S8Vector;

    invoke-static {p0, p1}, Lgnu/lists/S8Vector;->compareToInt(Lgnu/lists/SimpleVector;Lgnu/lists/SimpleVector;)I

    move-result p1

    return p1
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    .line 51
    iget v0, p0, Lgnu/lists/S8Vector;->size:I

    if-gt p1, v0, :cond_0

    .line 53
    iget-object v0, p0, Lgnu/lists/S8Vector;->data:[B

    aget-byte p1, v0, p1

    invoke-static {p1}, Lgnu/lists/Convert;->toObject(B)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 52
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final getBuffer(I)Ljava/lang/Object;
    .locals 1

    .line 58
    iget-object v0, p0, Lgnu/lists/S8Vector;->data:[B

    aget-byte p1, v0, p1

    invoke-static {p1}, Lgnu/lists/Convert;->toObject(B)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getElementKind()I
    .locals 1

    const/16 v0, 0x12

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "s8"

    return-object v0
.end method

.method public final intAtBuffer(I)I
    .locals 1

    .line 46
    iget-object v0, p0, Lgnu/lists/S8Vector;->data:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public setBuffer(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 63
    iget-object v0, p0, Lgnu/lists/S8Vector;->data:[B

    aget-byte v0, v0, p1

    .line 64
    iget-object v1, p0, Lgnu/lists/S8Vector;->data:[B

    invoke-static {p2}, Lgnu/lists/Convert;->toByte(Ljava/lang/Object;)B

    move-result p2

    aput-byte p2, v1, p1

    .line 65
    invoke-static {v0}, Lgnu/lists/Convert;->toObject(B)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
