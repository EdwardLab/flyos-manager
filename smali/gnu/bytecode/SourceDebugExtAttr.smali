.class public Lgnu/bytecode/SourceDebugExtAttr;
.super Lgnu/bytecode/Attribute;
.source "SourceDebugExtAttr.java"


# instance fields
.field curFileIndex:I

.field curFileName:Ljava/lang/String;

.field curLineIndex:I

.field data:[B

.field private defaultStratumId:Ljava/lang/String;

.field dlength:I

.field fileCount:I

.field fileIDs:[I

.field fileNames:[Ljava/lang/String;

.field lineCount:I

.field lines:[I

.field maxFileID:I

.field private outputFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lgnu/bytecode/ClassType;)V
    .locals 1

    const-string v0, "SourceDebugExtension"

    .line 193
    invoke-direct {p0, v0}, Lgnu/bytecode/Attribute;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 37
    iput v0, p0, Lgnu/bytecode/SourceDebugExtAttr;->curLineIndex:I

    .line 38
    iput v0, p0, Lgnu/bytecode/SourceDebugExtAttr;->curFileIndex:I

    .line 194
    invoke-virtual {p0, p1}, Lgnu/bytecode/SourceDebugExtAttr;->addToFrontOf(Lgnu/bytecode/AttrContainer;)V

    return-void
.end method

.method private fixLine(II)I
    .locals 6

    .line 44
    iget-object v0, p0, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    aget v1, v0, p2

    add-int/lit8 v2, p2, 0x2

    .line 45
    aget v3, v0, v2

    const/4 v4, -0x1

    if-ge p1, v1, :cond_1

    if-lez p2, :cond_0

    return v4

    :cond_0
    add-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x1

    .line 51
    aput p1, v0, p2

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    .line 52
    aput v1, v0, v2

    add-int/lit8 v1, p2, 0x3

    .line 53
    aput p1, v0, v1

    move v1, p1

    :cond_1
    add-int/lit8 v5, p2, 0x3

    .line 56
    aget v5, v0, v5

    sub-int/2addr v5, v1

    add-int/2addr v3, v1

    if-ge p1, v3, :cond_2

    add-int/2addr p1, v5

    return p1

    .line 59
    :cond_2
    iget v3, p0, Lgnu/bytecode/SourceDebugExtAttr;->lineCount:I

    add-int/lit8 v3, v3, -0x1

    mul-int/lit8 v3, v3, 0x5

    if-eq p2, v3, :cond_4

    if-nez p2, :cond_3

    const/16 p2, 0x8

    aget p2, v0, p2

    if-ge p1, p2, :cond_3

    goto :goto_0

    :cond_3
    return v4

    :cond_4
    :goto_0
    sub-int p2, p1, v1

    add-int/lit8 p2, p2, 0x1

    .line 62
    aput p2, v0, v2

    add-int/2addr p1, v5

    return p1
.end method


# virtual methods
.method addFile(Ljava/lang/String;)V
    .locals 8

    .line 127
    iget-object v0, p0, Lgnu/bytecode/SourceDebugExtAttr;->curFileName:Ljava/lang/String;

    if-eq v0, p1, :cond_9

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 129
    :cond_0
    iput-object p1, p0, Lgnu/bytecode/SourceDebugExtAttr;->curFileName:Ljava/lang/String;

    .line 130
    invoke-static {p1}, Lgnu/bytecode/SourceFileAttr;->fixSourceFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2f

    .line 132
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    add-int/lit8 v1, v0, 0x1

    .line 136
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object v1, p1

    .line 142
    :goto_0
    iget v2, p0, Lgnu/bytecode/SourceDebugExtAttr;->curFileIndex:I

    if-ltz v2, :cond_2

    iget-object v3, p0, Lgnu/bytecode/SourceDebugExtAttr;->fileNames:[Ljava/lang/String;

    aget-object v2, v3, v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    .line 145
    :cond_2
    iget v2, p0, Lgnu/bytecode/SourceDebugExtAttr;->fileCount:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    const/4 v5, -0x1

    if-ge v4, v2, :cond_4

    .line 148
    iget v6, p0, Lgnu/bytecode/SourceDebugExtAttr;->curFileIndex:I

    if-eq v4, v6, :cond_3

    iget-object v6, p0, Lgnu/bytecode/SourceDebugExtAttr;->fileNames:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 150
    iput v4, p0, Lgnu/bytecode/SourceDebugExtAttr;->curFileIndex:I

    .line 151
    iput v5, p0, Lgnu/bytecode/SourceDebugExtAttr;->curLineIndex:I

    return-void

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 156
    :cond_4
    iget-object v4, p0, Lgnu/bytecode/SourceDebugExtAttr;->fileIDs:[I

    if-nez v4, :cond_5

    const/4 v3, 0x5

    new-array v4, v3, [I

    .line 158
    iput-object v4, p0, Lgnu/bytecode/SourceDebugExtAttr;->fileIDs:[I

    new-array v3, v3, [Ljava/lang/String;

    .line 159
    iput-object v3, p0, Lgnu/bytecode/SourceDebugExtAttr;->fileNames:[Ljava/lang/String;

    goto :goto_2

    .line 161
    :cond_5
    array-length v6, v4

    if-lt v2, v6, :cond_6

    mul-int/lit8 v6, v2, 0x2

    .line 163
    new-array v7, v6, [I

    .line 164
    new-array v6, v6, [Ljava/lang/String;

    .line 165
    invoke-static {v4, v3, v7, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    iget-object v4, p0, Lgnu/bytecode/SourceDebugExtAttr;->fileNames:[Ljava/lang/String;

    invoke-static {v4, v3, v6, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    iput-object v7, p0, Lgnu/bytecode/SourceDebugExtAttr;->fileIDs:[I

    .line 168
    iput-object v6, p0, Lgnu/bytecode/SourceDebugExtAttr;->fileNames:[Ljava/lang/String;

    .line 172
    :cond_6
    :goto_2
    iget v3, p0, Lgnu/bytecode/SourceDebugExtAttr;->fileCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lgnu/bytecode/SourceDebugExtAttr;->fileCount:I

    .line 173
    iget v3, p0, Lgnu/bytecode/SourceDebugExtAttr;->maxFileID:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lgnu/bytecode/SourceDebugExtAttr;->maxFileID:I

    shl-int/lit8 v3, v3, 0x1

    if-ltz v0, :cond_7

    add-int/lit8 v3, v3, 0x1

    .line 177
    :cond_7
    iget-object v0, p0, Lgnu/bytecode/SourceDebugExtAttr;->fileNames:[Ljava/lang/String;

    aput-object p1, v0, v2

    .line 178
    iget-object p1, p0, Lgnu/bytecode/SourceDebugExtAttr;->outputFileName:Ljava/lang/String;

    if-nez p1, :cond_8

    .line 179
    iput-object v1, p0, Lgnu/bytecode/SourceDebugExtAttr;->outputFileName:Ljava/lang/String;

    .line 180
    :cond_8
    iget-object p1, p0, Lgnu/bytecode/SourceDebugExtAttr;->fileIDs:[I

    aput v3, p1, v2

    .line 181
    iput v2, p0, Lgnu/bytecode/SourceDebugExtAttr;->curFileIndex:I

    .line 182
    iput v5, p0, Lgnu/bytecode/SourceDebugExtAttr;->curLineIndex:I

    :cond_9
    :goto_3
    return-void
.end method

.method public addStratum(Ljava/lang/String;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lgnu/bytecode/SourceDebugExtAttr;->defaultStratumId:Ljava/lang/String;

    return-void
.end method

.method public assignConstants(Lgnu/bytecode/ClassType;)V
    .locals 11

    .line 206
    invoke-super {p0, p1}, Lgnu/bytecode/Attribute;->assignConstants(Lgnu/bytecode/ClassType;)V

    .line 208
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "SMAP\n"

    .line 210
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    iget-object v0, p0, Lgnu/bytecode/SourceDebugExtAttr;->outputFileName:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lgnu/bytecode/SourceDebugExtAttr;->nonAsteriskString(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 212
    iget-object v1, p0, Lgnu/bytecode/SourceDebugExtAttr;->defaultStratumId:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "Java"

    .line 213
    :cond_0
    invoke-virtual {p0, v1, p1}, Lgnu/bytecode/SourceDebugExtAttr;->nonAsteriskString(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 214
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v2, "*S "

    .line 216
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v1, "*F\n"

    .line 220
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 221
    :goto_0
    iget v3, p0, Lgnu/bytecode/SourceDebugExtAttr;->fileCount:I

    const/4 v4, 0x1

    if-ge v2, v3, :cond_3

    .line 223
    iget-object v3, p0, Lgnu/bytecode/SourceDebugExtAttr;->fileIDs:[I

    aget v3, v3, v2

    and-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    shr-int/lit8 v3, v3, 0x1

    if-eqz v4, :cond_2

    const-string v4, "+ "

    .line 227
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 228
    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v3, 0x20

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 229
    iget-object v3, p0, Lgnu/bytecode/SourceDebugExtAttr;->fileNames:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 232
    :cond_3
    iget v2, p0, Lgnu/bytecode/SourceDebugExtAttr;->lineCount:I

    if-lez v2, :cond_8

    const-string v2, "*L\n"

    .line 235
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 239
    :cond_4
    iget-object v5, p0, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    aget v6, v5, v1

    .line 240
    iget-object v7, p0, Lgnu/bytecode/SourceDebugExtAttr;->fileIDs:[I

    add-int/lit8 v8, v1, 0x1

    aget v8, v5, v8

    aget v7, v7, v8

    shr-int/2addr v7, v4

    add-int/lit8 v8, v1, 0x2

    .line 241
    aget v8, v5, v8

    add-int/lit8 v9, v1, 0x3

    .line 242
    aget v9, v5, v9

    add-int/lit8 v10, v1, 0x4

    .line 243
    aget v5, v5, v10

    .line 244
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    if-eq v7, v2, :cond_5

    const/16 v2, 0x23

    .line 247
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 248
    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move v2, v7

    :cond_5
    const/16 v6, 0x2c

    if-eq v8, v4, :cond_6

    .line 253
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 254
    invoke-virtual {p1, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_6
    const/16 v7, 0x3a

    .line 256
    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 257
    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    if-eq v5, v4, :cond_7

    .line 260
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 261
    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 263
    :cond_7
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x5

    add-int/2addr v3, v4

    .line 266
    iget v5, p0, Lgnu/bytecode/SourceDebugExtAttr;->lineCount:I

    if-lt v3, v5, :cond_4

    :cond_8
    const-string v0, "*E\n"

    .line 269
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 272
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lgnu/bytecode/SourceDebugExtAttr;->data:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    array-length p1, p1

    iput p1, p0, Lgnu/bytecode/SourceDebugExtAttr;->dlength:I

    return-void

    :catch_0
    move-exception p1

    .line 276
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method fixLine(I)I
    .locals 6

    .line 71
    iget v0, p0, Lgnu/bytecode/SourceDebugExtAttr;->curLineIndex:I

    if-ltz v0, :cond_0

    .line 73
    invoke-direct {p0, p1, v0}, Lgnu/bytecode/SourceDebugExtAttr;->fixLine(II)I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    .line 78
    :cond_0
    iget v0, p0, Lgnu/bytecode/SourceDebugExtAttr;->curFileIndex:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 79
    :goto_0
    iget v4, p0, Lgnu/bytecode/SourceDebugExtAttr;->lineCount:I

    if-ge v2, v4, :cond_2

    .line 81
    iget v4, p0, Lgnu/bytecode/SourceDebugExtAttr;->curLineIndex:I

    if-eq v3, v4, :cond_1

    iget-object v4, p0, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    add-int/lit8 v5, v3, 0x1

    aget v4, v4, v5

    if-ne v0, v4, :cond_1

    .line 83
    invoke-direct {p0, p1, v3}, Lgnu/bytecode/SourceDebugExtAttr;->fixLine(II)I

    move-result v4

    if-ltz v4, :cond_1

    .line 86
    iput v3, p0, Lgnu/bytecode/SourceDebugExtAttr;->curLineIndex:I

    return v4

    :cond_1
    add-int/lit8 v3, v3, 0x5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    :cond_2
    iget-object v2, p0, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    if-nez v2, :cond_3

    const/16 v1, 0x14

    new-array v1, v1, [I

    .line 93
    iput-object v1, p0, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    goto :goto_1

    .line 94
    :cond_3
    array-length v4, v2

    if-lt v3, v4, :cond_4

    mul-int/lit8 v4, v3, 0x2

    .line 96
    new-array v4, v4, [I

    .line 97
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    iput-object v4, p0, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    :cond_4
    :goto_1
    if-nez v3, :cond_5

    move v4, p1

    goto :goto_2

    .line 106
    :cond_5
    iget-object v1, p0, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    add-int/lit8 v2, v3, -0x5

    add-int/lit8 v4, v2, 0x3

    aget v4, v1, v4

    add-int/lit8 v2, v2, 0x2

    aget v1, v1, v2

    add-int/2addr v4, v1

    const/16 v1, 0x2710

    const/4 v2, 0x5

    if-ne v3, v2, :cond_6

    if-ge v4, v1, :cond_6

    const/16 v4, 0x2710

    .line 115
    :cond_6
    :goto_2
    iget-object v1, p0, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    aput p1, v1, v3

    add-int/lit8 p1, v3, 0x1

    .line 116
    aput v0, v1, p1

    add-int/lit8 p1, v3, 0x2

    const/4 v0, 0x1

    .line 117
    aput v0, v1, p1

    add-int/lit8 p1, v3, 0x3

    .line 118
    aput v4, v1, p1

    add-int/lit8 p1, v3, 0x4

    .line 119
    aput v0, v1, p1

    .line 120
    iput v3, p0, Lgnu/bytecode/SourceDebugExtAttr;->curLineIndex:I

    .line 121
    iget p1, p0, Lgnu/bytecode/SourceDebugExtAttr;->lineCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lgnu/bytecode/SourceDebugExtAttr;->lineCount:I

    return v4
.end method

.method public getLength()I
    .locals 1

    .line 283
    iget v0, p0, Lgnu/bytecode/SourceDebugExtAttr;->dlength:I

    return v0
.end method

.method nonAsteriskString(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 199
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_1

    :cond_0
    const/16 v0, 0x20

    .line 200
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 201
    :cond_1
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;)V
    .locals 5

    const-string v0, "Attribute \""

    .line 295
    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0}, Lgnu/bytecode/SourceDebugExtAttr;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    const-string v0, "\", length:"

    .line 297
    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 298
    iget v0, p0, Lgnu/bytecode/SourceDebugExtAttr;->dlength:I

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->println(I)V

    .line 301
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lgnu/bytecode/SourceDebugExtAttr;->data:[B

    const/4 v2, 0x0

    iget v3, p0, Lgnu/bytecode/SourceDebugExtAttr;->dlength:I

    const-string v4, "UTF-8"

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "(Caught "

    .line 305
    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/Object;)V

    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->println(C)V

    .line 307
    :goto_0
    iget v0, p0, Lgnu/bytecode/SourceDebugExtAttr;->dlength:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lgnu/bytecode/SourceDebugExtAttr;->data:[B

    add-int/lit8 v2, v0, -0x1

    aget-byte v2, v1, v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_0

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, v1, v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 308
    invoke-virtual {p1}, Lgnu/bytecode/ClassTypeWriter;->println()V

    :cond_0
    return-void
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 290
    iget-object v0, p0, Lgnu/bytecode/SourceDebugExtAttr;->data:[B

    iget v1, p0, Lgnu/bytecode/SourceDebugExtAttr;->dlength:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/DataOutputStream;->write([BII)V

    return-void
.end method
