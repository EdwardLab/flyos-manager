.class public Lgnu/math/Dimensions;
.super Ljava/lang/Object;
.source "Dimensions.java"


# static fields
.field public static Empty:Lgnu/math/Dimensions;

.field private static hashTable:[Lgnu/math/Dimensions;


# instance fields
.field bases:[Lgnu/math/BaseUnit;

.field private chain:Lgnu/math/Dimensions;

.field hash_code:I

.field powers:[S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x64

    new-array v0, v0, [Lgnu/math/Dimensions;

    .line 28
    sput-object v0, Lgnu/math/Dimensions;->hashTable:[Lgnu/math/Dimensions;

    .line 41
    new-instance v0, Lgnu/math/Dimensions;

    invoke-direct {v0}, Lgnu/math/Dimensions;-><init>()V

    sput-object v0, Lgnu/math/Dimensions;->Empty:Lgnu/math/Dimensions;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Lgnu/math/BaseUnit;

    .line 46
    iput-object v0, p0, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    .line 47
    sget-object v1, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 48
    invoke-direct {p0, v2}, Lgnu/math/Dimensions;->enterHash(I)V

    return-void
.end method

.method constructor <init>(Lgnu/math/BaseUnit;)V
    .locals 4

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Lgnu/math/BaseUnit;

    .line 54
    iput-object v0, p0, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    const/4 v1, 0x1

    new-array v2, v1, [S

    .line 55
    iput-object v2, p0, Lgnu/math/Dimensions;->powers:[S

    const/4 v2, 0x0

    aput-object p1, v0, v2

    .line 57
    sget-object v3, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    aput-object v3, v0, v1

    .line 58
    iget-object v0, p0, Lgnu/math/Dimensions;->powers:[S

    aput-short v1, v0, v2

    .line 59
    iget p1, p1, Lgnu/math/BaseUnit;->index:I

    invoke-direct {p0, p1}, Lgnu/math/Dimensions;->enterHash(I)V

    return-void
.end method

.method private constructor <init>(Lgnu/math/Dimensions;ILgnu/math/Dimensions;II)V
    .locals 8

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p5, p0, Lgnu/math/Dimensions;->hash_code:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 68
    :goto_0
    iget-object v2, p1, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    aget-object v2, v2, v1

    sget-object v3, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    if-eq v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 69
    :goto_1
    iget-object v3, p3, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    aget-object v3, v3, v2

    sget-object v4, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    if-eq v3, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 71
    new-array v2, v1, [Lgnu/math/BaseUnit;

    iput-object v2, p0, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    .line 72
    new-array v1, v1, [S

    iput-object v1, p0, Lgnu/math/Dimensions;->powers:[S

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 76
    :goto_2
    iget-object v3, p1, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    aget-object v3, v3, v0

    .line 77
    iget-object v4, p3, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    aget-object v4, v4, v1

    .line 79
    iget v5, v3, Lgnu/math/BaseUnit;->index:I

    iget v6, v4, Lgnu/math/BaseUnit;->index:I

    if-ge v5, v6, :cond_2

    .line 81
    iget-object v4, p1, Lgnu/math/Dimensions;->powers:[S

    aget-short v4, v4, v0

    mul-int v4, v4, p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 84
    :cond_2
    iget v5, v4, Lgnu/math/BaseUnit;->index:I

    iget v6, v3, Lgnu/math/BaseUnit;->index:I

    if-ge v5, v6, :cond_3

    .line 87
    iget-object v3, p3, Lgnu/math/Dimensions;->powers:[S

    aget-short v3, v3, v1

    mul-int v3, v3, p4

    add-int/lit8 v1, v1, 0x1

    move-object v7, v4

    move v4, v3

    move-object v3, v7

    goto :goto_3

    .line 90
    :cond_3
    sget-object v5, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    if-ne v4, v5, :cond_4

    .line 104
    iget-object p1, p0, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    sget-object p2, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    aput-object p2, p1, v2

    .line 105
    invoke-direct {p0, p5}, Lgnu/math/Dimensions;->enterHash(I)V

    return-void

    .line 94
    :cond_4
    iget-object v4, p1, Lgnu/math/Dimensions;->powers:[S

    aget-short v4, v4, v0

    mul-int v4, v4, p2

    iget-object v5, p3, Lgnu/math/Dimensions;->powers:[S

    aget-short v5, v5, v1

    mul-int v5, v5, p4

    add-int/2addr v4, v5

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    :goto_3
    int-to-short v5, v4

    if-ne v5, v4, :cond_6

    .line 101
    iget-object v4, p0, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    aput-object v3, v4, v2

    .line 102
    iget-object v3, p0, Lgnu/math/Dimensions;->powers:[S

    add-int/lit8 v4, v2, 0x1

    aput-short v5, v3, v2

    move v2, v4

    goto :goto_2

    .line 100
    :cond_6
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string p2, "overflow in dimensions"

    invoke-direct {p1, p2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private enterHash(I)V
    .locals 2

    .line 34
    iput p1, p0, Lgnu/math/Dimensions;->hash_code:I

    const v0, 0x7fffffff

    and-int/2addr p1, v0

    .line 35
    sget-object v0, Lgnu/math/Dimensions;->hashTable:[Lgnu/math/Dimensions;

    array-length v1, v0

    rem-int/2addr p1, v1

    .line 36
    aget-object v1, v0, p1

    iput-object v1, p0, Lgnu/math/Dimensions;->chain:Lgnu/math/Dimensions;

    .line 37
    aput-object p0, v0, p1

    return-void
.end method

.method private matchesProduct(Lgnu/math/Dimensions;ILgnu/math/Dimensions;I)Z
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 115
    :goto_0
    iget-object v4, p1, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    aget-object v4, v4, v1

    .line 116
    iget-object v5, p3, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    aget-object v5, v5, v2

    .line 118
    iget v6, v4, Lgnu/math/BaseUnit;->index:I

    iget v7, v5, Lgnu/math/BaseUnit;->index:I

    if-ge v6, v7, :cond_0

    .line 120
    iget-object v5, p1, Lgnu/math/Dimensions;->powers:[S

    aget-short v5, v5, v1

    mul-int v5, v5, p2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 123
    :cond_0
    iget v6, v5, Lgnu/math/BaseUnit;->index:I

    iget v7, v4, Lgnu/math/BaseUnit;->index:I

    if-ge v6, v7, :cond_1

    .line 126
    iget-object v4, p3, Lgnu/math/Dimensions;->powers:[S

    aget-short v4, v4, v2

    mul-int v4, v4, p4

    add-int/lit8 v2, v2, 0x1

    move-object v8, v5

    move v5, v4

    move-object v4, v8

    goto :goto_1

    .line 129
    :cond_1
    sget-object v6, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    if-ne v5, v6, :cond_3

    .line 130
    iget-object p1, p0, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    aget-object p1, p1, v3

    if-ne p1, v5, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    .line 133
    :cond_3
    iget-object v5, p1, Lgnu/math/Dimensions;->powers:[S

    aget-short v5, v5, v1

    mul-int v5, v5, p2

    iget-object v6, p3, Lgnu/math/Dimensions;->powers:[S

    aget-short v6, v6, v2

    mul-int v6, v6, p4

    add-int/2addr v5, v6

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    if-nez v5, :cond_4

    goto :goto_0

    .line 138
    :cond_4
    :goto_1
    iget-object v6, p0, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    aget-object v6, v6, v3

    if-ne v6, v4, :cond_6

    iget-object v4, p0, Lgnu/math/Dimensions;->powers:[S

    aget-short v4, v4, v3

    if-eq v4, v5, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    return v0
.end method

.method public static product(Lgnu/math/Dimensions;ILgnu/math/Dimensions;I)Lgnu/math/Dimensions;
    .locals 8

    .line 147
    invoke-virtual {p0}, Lgnu/math/Dimensions;->hashCode()I

    move-result v0

    mul-int v0, v0, p1

    invoke-virtual {p2}, Lgnu/math/Dimensions;->hashCode()I

    move-result v1

    mul-int v1, v1, p3

    add-int v7, v0, v1

    const v0, 0x7fffffff

    and-int/2addr v0, v7

    .line 148
    sget-object v1, Lgnu/math/Dimensions;->hashTable:[Lgnu/math/Dimensions;

    array-length v2, v1

    rem-int/2addr v0, v2

    .line 149
    aget-object v0, v1, v0

    :goto_0
    if-eqz v0, :cond_1

    .line 152
    iget v1, v0, Lgnu/math/Dimensions;->hash_code:I

    if-ne v1, v7, :cond_0

    invoke-direct {v0, p0, p1, p2, p3}, Lgnu/math/Dimensions;->matchesProduct(Lgnu/math/Dimensions;ILgnu/math/Dimensions;I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 150
    :cond_0
    iget-object v0, v0, Lgnu/math/Dimensions;->chain:Lgnu/math/Dimensions;

    goto :goto_0

    .line 155
    :cond_1
    new-instance v0, Lgnu/math/Dimensions;

    move-object v2, v0

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v2 .. v7}, Lgnu/math/Dimensions;-><init>(Lgnu/math/Dimensions;ILgnu/math/Dimensions;II)V

    return-object v0
.end method


# virtual methods
.method public getPower(Lgnu/math/BaseUnit;)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 161
    :goto_0
    iget-object v2, p0, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    aget-object v2, v2, v1

    iget v2, v2, Lgnu/math/BaseUnit;->index:I

    iget v3, p1, Lgnu/math/BaseUnit;->index:I

    if-gt v2, v3, :cond_1

    .line 163
    iget-object v2, p0, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_0

    .line 164
    iget-object p1, p0, Lgnu/math/Dimensions;->powers:[S

    aget-short p1, p1, v1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 30
    iget v0, p0, Lgnu/math/Dimensions;->hash_code:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 171
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 172
    :goto_0
    iget-object v2, p0, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    aget-object v2, v2, v1

    sget-object v3, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    if-eq v2, v3, :cond_2

    if-lez v1, :cond_0

    const/16 v2, 0x2a

    .line 175
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 176
    :cond_0
    iget-object v2, p0, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 177
    iget-object v2, p0, Lgnu/math/Dimensions;->powers:[S

    aget-short v2, v2, v1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/16 v3, 0x5e

    .line 180
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 181
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
