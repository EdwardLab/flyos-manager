.class public Lgnu/text/Char;
.super Ljava/lang/Object;
.source "Char.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Externalizable;


# static fields
.field static ascii:[Lgnu/text/Char;

.field static charNameValues:[C

.field static charNames:[Ljava/lang/String;

.field static hashTable:Lgnu/text/CharMap;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 76
    new-instance v0, Lgnu/text/CharMap;

    invoke-direct {v0}, Lgnu/text/CharMap;-><init>()V

    sput-object v0, Lgnu/text/Char;->hashTable:Lgnu/text/CharMap;

    const/16 v0, 0x80

    new-array v1, v0, [Lgnu/text/Char;

    .line 80
    sput-object v1, Lgnu/text/Char;->ascii:[Lgnu/text/Char;

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 82
    sget-object v1, Lgnu/text/Char;->ascii:[Lgnu/text/Char;

    new-instance v2, Lgnu/text/Char;

    invoke-direct {v2, v0}, Lgnu/text/Char;-><init>(I)V

    aput-object v2, v1, v0

    goto :goto_0

    :cond_0
    const/16 v0, 0xf

    new-array v0, v0, [C

    .line 103
    fill-array-data v0, :array_0

    sput-object v0, Lgnu/text/Char;->charNameValues:[C

    const-string v1, "space"

    const-string v2, "tab"

    const-string v3, "newline"

    const-string v4, "linefeed"

    const-string v5, "return"

    const-string v6, "page"

    const-string v7, "backspace"

    const-string v8, "esc"

    const-string v9, "delete"

    const-string v10, "del"

    const-string v11, "rubout"

    const-string v12, "alarm"

    const-string v13, "bel"

    const-string v14, "vtab"

    const-string v15, "nul"

    .line 107
    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgnu/text/Char;->charNames:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 2
        0x20s
        0x9s
        0xas
        0xas
        0xds
        0xcs
        0x8s
        0x1bs
        0x7fs
        0x7fs
        0x7fs
        0x7s
        0x7s
        0xbs
        0x0s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lgnu/text/Char;->value:I

    return-void
.end method

.method public static make(I)Lgnu/text/Char;
    .locals 2

    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    .line 88
    sget-object v0, Lgnu/text/Char;->ascii:[Lgnu/text/Char;

    aget-object p0, v0, p0

    return-object p0

    .line 89
    :cond_0
    sget-object v0, Lgnu/text/Char;->hashTable:Lgnu/text/CharMap;

    monitor-enter v0

    .line 91
    :try_start_0
    sget-object v1, Lgnu/text/Char;->hashTable:Lgnu/text/CharMap;

    invoke-virtual {v1, p0}, Lgnu/text/CharMap;->get(I)Lgnu/text/Char;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 92
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static nameToChar(Ljava/lang/String;)I
    .locals 8

    .line 125
    sget-object v0, Lgnu/text/Char;->charNames:[Ljava/lang/String;

    array-length v0, v0

    :cond_0
    const/4 v1, -0x1

    add-int/2addr v0, v1

    if-ltz v0, :cond_1

    .line 127
    sget-object v1, Lgnu/text/Char;->charNames:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    sget-object p0, Lgnu/text/Char;->charNameValues:[C

    aget-char p0, p0, v0

    return p0

    .line 130
    :cond_1
    sget-object v0, Lgnu/text/Char;->charNames:[Ljava/lang/String;

    array-length v0, v0

    :cond_2
    add-int/2addr v0, v1

    if-ltz v0, :cond_3

    .line 132
    sget-object v2, Lgnu/text/Char;->charNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 133
    sget-object p0, Lgnu/text/Char;->charNameValues:[C

    aget-char p0, p0, v0

    return p0

    .line 135
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v3, :cond_6

    .line 136
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x75

    if-ne v4, v5, :cond_6

    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_0
    if-ne v4, v0, :cond_4

    return v5

    .line 143
    :cond_4
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    if-gez v6, :cond_5

    goto :goto_1

    :cond_5
    shl-int/lit8 v5, v5, 0x4

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    const/4 v4, 0x3

    if-ne v0, v4, :cond_8

    .line 151
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2d

    if-ne v0, v3, :cond_8

    .line 153
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x63

    if-eq v0, v2, :cond_7

    const/16 v2, 0x43

    if-ne v0, v2, :cond_8

    :cond_7
    const/4 v0, 0x2

    .line 156
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    and-int/lit8 p0, p0, 0x1f

    return p0

    :cond_8
    return v1
.end method

.method public static print(ILgnu/lists/Consumer;)V
    .locals 2

    const/high16 v0, 0x10000

    if-lt p0, v0, :cond_0

    sub-int v0, p0, v0

    shr-int/lit8 v0, v0, 0xa

    const v1, 0xd800

    add-int/2addr v0, v1

    int-to-char v0, v0

    .line 52
    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(I)V

    and-int/lit16 p0, p0, 0x3ff

    const v0, 0xdc00

    add-int/2addr p0, v0

    int-to-char p0, p0

    .line 53
    invoke-interface {p1, p0}, Lgnu/lists/Consumer;->write(I)V

    goto :goto_0

    :cond_0
    int-to-char p0, p0

    .line 56
    invoke-interface {p1, p0}, Lgnu/lists/Consumer;->write(I)V

    :goto_0
    return-void
.end method

.method public static toScmReadableString(I)Ljava/lang/String;
    .locals 4

    .line 203
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "#\\"

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    .line 205
    :goto_0
    sget-object v2, Lgnu/text/Char;->charNameValues:[C

    array-length v3, v2

    if-ge v1, v3, :cond_1

    int-to-char v3, p0

    .line 207
    aget-char v2, v2, v1

    if-ne v3, v2, :cond_0

    .line 209
    sget-object p0, Lgnu/text/Char;->charNames:[Ljava/lang/String;

    aget-object p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0x20

    if-lt p0, v1, :cond_3

    const/16 v1, 0x7f

    if-le p0, v1, :cond_2

    goto :goto_1

    :cond_2
    int-to-char p0, p0

    .line 219
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_3
    :goto_1
    const/16 v1, 0x78

    .line 215
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v1, 0x10

    .line 216
    invoke-static {p0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final charValue()C
    .locals 1

    .line 61
    iget v0, p0, Lgnu/text/Char;->value:I

    int-to-char v0, v0

    return v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 266
    iget v0, p0, Lgnu/text/Char;->value:I

    check-cast p1, Lgnu/text/Char;

    iget p1, p1, Lgnu/text/Char;->value:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 99
    instance-of v0, p1, Lgnu/text/Char;

    if-eqz v0, :cond_0

    check-cast p1, Lgnu/text/Char;

    invoke-virtual {p1}, Lgnu/text/Char;->intValue()I

    move-result p1

    iget v0, p0, Lgnu/text/Char;->value:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 71
    iget v0, p0, Lgnu/text/Char;->value:I

    return v0
.end method

.method public final intValue()I
    .locals 1

    .line 66
    iget v0, p0, Lgnu/text/Char;->value:I

    return v0
.end method

.method public print(Lgnu/lists/Consumer;)V
    .locals 1

    .line 45
    iget v0, p0, Lgnu/text/Char;->value:I

    invoke-static {v0, p1}, Lgnu/text/Char;->print(ILgnu/lists/Consumer;)V

    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 250
    invoke-interface {p1}, Ljava/io/ObjectInput;->readChar()C

    move-result v0

    iput v0, p0, Lgnu/text/Char;->value:I

    const v1, 0xd800

    if-lt v0, v1, :cond_0

    const v2, 0xdbff

    if-ge v0, v2, :cond_0

    .line 253
    invoke-interface {p1}, Ljava/io/ObjectInput;->readChar()C

    move-result p1

    const v0, 0xdc00

    if-lt p1, v0, :cond_0

    const v2, 0xdfff

    if-gt p1, v2, :cond_0

    .line 255
    iget v2, p0, Lgnu/text/Char;->value:I

    sub-int/2addr v2, v1

    shl-int/lit8 v1, v2, 0xa

    sub-int/2addr p1, v0

    add-int/2addr v1, p1

    const/high16 p1, 0x10000

    add-int/2addr v1, p1

    iput v1, p0, Lgnu/text/Char;->value:I

    :cond_0
    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 261
    iget v0, p0, Lgnu/text/Char;->value:I

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 166
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x27

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 168
    iget v2, p0, Lgnu/text/Char;->value:I

    const/16 v3, 0x20

    if-lt v2, v3, :cond_0

    const/16 v3, 0x7f

    if-ge v2, v3, :cond_0

    if-eq v2, v1, :cond_0

    int-to-char v2, v2

    .line 169
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_0
    const/16 v2, 0x5c

    .line 172
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 173
    iget v2, p0, Lgnu/text/Char;->value:I

    if-ne v2, v1, :cond_1

    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_1
    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    const/16 v2, 0x6e

    .line 176
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_2
    const/16 v3, 0xd

    if-ne v2, v3, :cond_3

    const/16 v2, 0x72

    .line 178
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_3
    const/16 v3, 0x9

    if-ne v2, v3, :cond_4

    const/16 v2, 0x74

    .line 180
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_4
    const/16 v3, 0x100

    const/16 v4, 0x30

    if-ge v2, v3, :cond_6

    .line 183
    invoke-static {v2}, Ljava/lang/Integer;->toOctalString(I)Ljava/lang/String;

    move-result-object v2

    .line 184
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x3

    :goto_0
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_5

    .line 185
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 186
    :cond_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_6
    const/16 v2, 0x75

    .line 190
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 191
    iget v2, p0, Lgnu/text/Char;->value:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 192
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x4

    :goto_1
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_7

    .line 193
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 194
    :cond_7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 197
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 198
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    iget v0, p0, Lgnu/text/Char;->value:I

    const v1, 0xd800

    if-le v0, v1, :cond_1

    const v2, 0xffff

    if-le v0, v2, :cond_0

    const/high16 v2, 0x10000

    sub-int/2addr v0, v2

    shr-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v1

    .line 235
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeChar(I)V

    .line 236
    iget v0, p0, Lgnu/text/Char;->value:I

    and-int/lit16 v0, v0, 0x3ff

    const v1, 0xdc00

    add-int/2addr v0, v1

    iput v0, p0, Lgnu/text/Char;->value:I

    goto :goto_0

    :cond_0
    const v1, 0xdbff

    if-gt v0, v1, :cond_1

    .line 240
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeChar(I)V

    const/4 v0, 0x0

    .line 241
    iput v0, p0, Lgnu/text/Char;->value:I

    .line 244
    :cond_1
    :goto_0
    iget v0, p0, Lgnu/text/Char;->value:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeChar(I)V

    return-void
.end method
