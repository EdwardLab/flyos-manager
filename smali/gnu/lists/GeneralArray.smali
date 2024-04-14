.class public Lgnu/lists/GeneralArray;
.super Lgnu/lists/AbstractSequence;
.source "GeneralArray.java"

# interfaces
.implements Lgnu/lists/Array;


# static fields
.field static final zeros:[I


# instance fields
.field base:Lgnu/lists/SimpleVector;

.field dimensions:[I

.field lowBounds:[I

.field offset:I

.field simple:Z

.field strides:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 25
    sput-object v0, Lgnu/lists/GeneralArray;->zeros:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Lgnu/lists/AbstractSequence;-><init>()V

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lgnu/lists/GeneralArray;->simple:Z

    return-void
.end method

.method public constructor <init>([I)V
    .locals 4

    .line 61
    invoke-direct {p0}, Lgnu/lists/AbstractSequence;-><init>()V

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lgnu/lists/GeneralArray;->simple:Z

    .line 63
    array-length v1, p1

    .line 64
    sget-object v2, Lgnu/lists/GeneralArray;->zeros:[I

    array-length v3, v2

    if-gt v1, v3, :cond_0

    .line 65
    iput-object v2, p0, Lgnu/lists/GeneralArray;->lowBounds:[I

    goto :goto_0

    .line 67
    :cond_0
    new-array v2, v1, [I

    iput-object v2, p0, Lgnu/lists/GeneralArray;->lowBounds:[I

    .line 68
    :goto_0
    new-array v2, v1, [I

    :goto_1
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    .line 71
    aput v0, v2, v1

    .line 72
    aget v3, p1, v1

    mul-int v0, v0, v3

    goto :goto_1

    .line 74
    :cond_1
    new-instance v1, Lgnu/lists/FVector;

    invoke-direct {v1, v0}, Lgnu/lists/FVector;-><init>(I)V

    iput-object v1, p0, Lgnu/lists/GeneralArray;->base:Lgnu/lists/SimpleVector;

    .line 75
    iput-object p1, p0, Lgnu/lists/GeneralArray;->dimensions:[I

    const/4 p1, 0x0

    .line 76
    iput p1, p0, Lgnu/lists/GeneralArray;->offset:I

    return-void
.end method

.method public static makeSimple([I[ILgnu/lists/SimpleVector;)Lgnu/lists/Array;
    .locals 5

    .line 32
    array-length v0, p1

    if-nez p0, :cond_0

    .line 35
    sget-object p0, Lgnu/lists/GeneralArray;->zeros:[I

    .line 36
    array-length v1, p0

    if-le v0, v1, :cond_0

    .line 37
    new-array p0, v0, [I

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v2, 0x0

    .line 39
    aget v2, p0, v2

    if-nez v2, :cond_1

    return-object p2

    .line 41
    :cond_1
    new-instance v2, Lgnu/lists/GeneralArray;

    invoke-direct {v2}, Lgnu/lists/GeneralArray;-><init>()V

    .line 42
    new-array v3, v0, [I

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    .line 46
    aput v1, v3, v0

    .line 47
    aget v4, p1, v0

    mul-int v1, v1, v4

    goto :goto_0

    .line 49
    :cond_2
    iput-object v3, v2, Lgnu/lists/GeneralArray;->strides:[I

    .line 50
    iput-object p1, v2, Lgnu/lists/GeneralArray;->dimensions:[I

    .line 51
    iput-object p0, v2, Lgnu/lists/GeneralArray;->lowBounds:[I

    .line 52
    iput-object p2, v2, Lgnu/lists/GeneralArray;->base:Lgnu/lists/SimpleVector;

    return-object v2
.end method

.method public static toString(Lgnu/lists/Array;Ljava/lang/StringBuffer;)V
    .locals 5

    const-string v0, "#<array"

    .line 175
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    invoke-interface {p0}, Lgnu/lists/Array;->rank()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    const/16 v2, 0x20

    .line 179
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 180
    invoke-interface {p0, v1}, Lgnu/lists/Array;->getLowBound(I)I

    move-result v2

    .line 181
    invoke-interface {p0, v1}, Lgnu/lists/Array;->getSize(I)I

    move-result v3

    if-eqz v2, :cond_0

    .line 184
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v4, 0x3a

    .line 185
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    add-int/2addr v2, v3

    .line 187
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 p0, 0x3e

    .line 189
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public createPos(IZ)I
    .locals 4

    .line 103
    iget v0, p0, Lgnu/lists/GeneralArray;->offset:I

    .line 104
    iget-object v1, p0, Lgnu/lists/GeneralArray;->dimensions:[I

    array-length v1, v1

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 106
    iget-object v2, p0, Lgnu/lists/GeneralArray;->dimensions:[I

    aget v2, v2, v1

    .line 107
    rem-int v3, p1, v2

    .line 108
    div-int/2addr p1, v2

    .line 109
    iget-object v2, p0, Lgnu/lists/GeneralArray;->strides:[I

    aget v2, v2, v1

    mul-int v2, v2, v3

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    shl-int/lit8 p1, v0, 0x1

    or-int/2addr p1, p2

    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 0

    .line 98
    invoke-virtual {p0, p1}, Lgnu/lists/GeneralArray;->getRowMajor(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get([I)Ljava/lang/Object;
    .locals 1

    .line 131
    iget-object v0, p0, Lgnu/lists/GeneralArray;->base:Lgnu/lists/SimpleVector;

    invoke-virtual {p0, p1}, Lgnu/lists/GeneralArray;->getEffectiveIndex([I)I

    move-result p1

    invoke-virtual {v0, p1}, Lgnu/lists/SimpleVector;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getEffectiveIndex([I)I
    .locals 4

    .line 84
    iget v0, p0, Lgnu/lists/GeneralArray;->offset:I

    .line 85
    iget-object v1, p0, Lgnu/lists/GeneralArray;->dimensions:[I

    array-length v1, v1

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    .line 87
    aget v2, p1, v1

    .line 88
    iget-object v3, p0, Lgnu/lists/GeneralArray;->lowBounds:[I

    aget v3, v3, v1

    if-lt v2, v3, :cond_0

    sub-int/2addr v2, v3

    .line 89
    iget-object v3, p0, Lgnu/lists/GeneralArray;->dimensions:[I

    aget v3, v3, v1

    if-ge v2, v3, :cond_0

    .line 91
    iget-object v3, p0, Lgnu/lists/GeneralArray;->strides:[I

    aget v3, v3, v1

    mul-int v3, v3, v2

    add-int/2addr v0, v3

    goto :goto_0

    .line 90
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_1
    return v0
.end method

.method public getLowBound(I)I
    .locals 1

    .line 150
    iget-object v0, p0, Lgnu/lists/GeneralArray;->lowBounds:[I

    aget p1, v0, p1

    return p1
.end method

.method public getRowMajor(I)Ljava/lang/Object;
    .locals 4

    .line 116
    iget-boolean v0, p0, Lgnu/lists/GeneralArray;->simple:Z

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lgnu/lists/GeneralArray;->base:Lgnu/lists/SimpleVector;

    invoke-virtual {v0, p1}, Lgnu/lists/SimpleVector;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 118
    :cond_0
    iget v0, p0, Lgnu/lists/GeneralArray;->offset:I

    .line 119
    iget-object v1, p0, Lgnu/lists/GeneralArray;->dimensions:[I

    array-length v1, v1

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    .line 121
    iget-object v2, p0, Lgnu/lists/GeneralArray;->dimensions:[I

    aget v2, v2, v1

    .line 122
    rem-int v3, p1, v2

    .line 123
    div-int/2addr p1, v2

    .line 124
    iget-object v2, p0, Lgnu/lists/GeneralArray;->strides:[I

    aget v2, v2, v1

    mul-int v2, v2, v3

    add-int/2addr v0, v2

    goto :goto_0

    .line 126
    :cond_1
    iget-object p1, p0, Lgnu/lists/GeneralArray;->base:Lgnu/lists/SimpleVector;

    invoke-virtual {p1, v0}, Lgnu/lists/SimpleVector;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getSize(I)I
    .locals 1

    .line 155
    iget-object v0, p0, Lgnu/lists/GeneralArray;->dimensions:[I

    aget p1, v0, p1

    return p1
.end method

.method public rank()I
    .locals 1

    .line 79
    iget-object v0, p0, Lgnu/lists/GeneralArray;->dimensions:[I

    array-length v0, v0

    return v0
.end method

.method public set([ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 136
    iget-object v0, p0, Lgnu/lists/GeneralArray;->base:Lgnu/lists/SimpleVector;

    invoke-virtual {p0, p1}, Lgnu/lists/GeneralArray;->getEffectiveIndex([I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lgnu/lists/SimpleVector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 3

    .line 143
    iget-object v0, p0, Lgnu/lists/GeneralArray;->dimensions:[I

    array-length v0, v0

    const/4 v1, 0x1

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 144
    iget-object v2, p0, Lgnu/lists/GeneralArray;->dimensions:[I

    aget v2, v2, v0

    mul-int v1, v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 194
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 195
    invoke-static {p0, v0}, Lgnu/lists/GeneralArray;->toString(Lgnu/lists/Array;Ljava/lang/StringBuffer;)V

    .line 196
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transpose([I[II[I)Lgnu/lists/Array;
    .locals 3

    .line 161
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    aget v0, p1, v1

    if-nez v0, :cond_0

    new-instance v0, Lgnu/lists/GeneralArray1;

    invoke-direct {v0}, Lgnu/lists/GeneralArray1;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lgnu/lists/GeneralArray;

    invoke-direct {v0}, Lgnu/lists/GeneralArray;-><init>()V

    .line 164
    :goto_0
    iput p3, v0, Lgnu/lists/GeneralArray;->offset:I

    .line 165
    iput-object p4, v0, Lgnu/lists/GeneralArray;->strides:[I

    .line 166
    iput-object p2, v0, Lgnu/lists/GeneralArray;->dimensions:[I

    .line 167
    iput-object p1, v0, Lgnu/lists/GeneralArray;->lowBounds:[I

    .line 168
    iget-object p1, p0, Lgnu/lists/GeneralArray;->base:Lgnu/lists/SimpleVector;

    iput-object p1, v0, Lgnu/lists/GeneralArray;->base:Lgnu/lists/SimpleVector;

    .line 169
    iput-boolean v1, v0, Lgnu/lists/GeneralArray;->simple:Z

    return-object v0
.end method
