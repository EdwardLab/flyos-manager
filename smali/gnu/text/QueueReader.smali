.class public Lgnu/text/QueueReader;
.super Ljava/io/Reader;
.source "QueueReader.java"

# interfaces
.implements Ljava/lang/Appendable;


# instance fields
.field EOFseen:Z

.field buffer:[C

.field limit:I

.field mark:I

.field pos:I

.field readAheadLimit:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized append(C)Lgnu/text/QueueReader;
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    .line 129
    :try_start_0
    invoke-virtual {p0, v0}, Lgnu/text/QueueReader;->reserveSpace(I)V

    .line 130
    iget-object v0, p0, Lgnu/text/QueueReader;->buffer:[C

    iget v1, p0, Lgnu/text/QueueReader;->limit:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/text/QueueReader;->limit:I

    aput-char p1, v0, v1

    .line 131
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public append(Ljava/lang/CharSequence;)Lgnu/text/QueueReader;
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "null"

    :cond_0
    const/4 v0, 0x0

    .line 62
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lgnu/text/QueueReader;->append(Ljava/lang/CharSequence;II)Lgnu/text/QueueReader;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized append(Ljava/lang/CharSequence;II)Lgnu/text/QueueReader;
    .locals 6

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "null"

    :cond_0
    sub-int v0, p3, p2

    .line 70
    invoke-virtual {p0, v0}, Lgnu/text/QueueReader;->reserveSpace(I)V

    .line 71
    iget v1, p0, Lgnu/text/QueueReader;->limit:I

    .line 72
    iget-object v2, p0, Lgnu/text/QueueReader;->buffer:[C

    .line 73
    instance-of v3, p1, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 74
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, p2, p3, v2, v1}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_1

    .line 75
    :cond_1
    instance-of v3, p1, Lgnu/lists/CharSeq;

    if-eqz v3, :cond_2

    .line 76
    check-cast p1, Lgnu/lists/CharSeq;

    invoke-interface {p1, p2, p3, v2, v1}, Lgnu/lists/CharSeq;->getChars(II[CI)V

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_0
    if-ge p2, p3, :cond_3

    add-int/lit8 v4, v3, 0x1

    .line 81
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    aput-char v5, v2, v3

    add-int/lit8 p2, p2, 0x1

    move v3, v4

    goto :goto_0

    :cond_3
    :goto_1
    add-int/2addr v1, v0

    .line 83
    iput v1, p0, Lgnu/text/QueueReader;->limit:I

    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    invoke-virtual {p0, p1}, Lgnu/text/QueueReader;->append(C)Lgnu/text/QueueReader;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    invoke-virtual {p0, p1}, Lgnu/text/QueueReader;->append(Ljava/lang/CharSequence;)Lgnu/text/QueueReader;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    invoke-virtual {p0, p1, p2, p3}, Lgnu/text/QueueReader;->append(Ljava/lang/CharSequence;II)Lgnu/text/QueueReader;

    move-result-object p1

    return-object p1
.end method

.method public append([C)V
    .locals 2

    .line 116
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lgnu/text/QueueReader;->append([CII)V

    return-void
.end method

.method public declared-synchronized append([CII)V
    .locals 2

    monitor-enter p0

    .line 121
    :try_start_0
    invoke-virtual {p0, p3}, Lgnu/text/QueueReader;->reserveSpace(I)V

    .line 122
    iget-object v0, p0, Lgnu/text/QueueReader;->buffer:[C

    iget v1, p0, Lgnu/text/QueueReader;->limit:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    iget p1, p0, Lgnu/text/QueueReader;->limit:I

    add-int/2addr p1, p3

    iput p1, p0, Lgnu/text/QueueReader;->limit:I

    .line 124
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized appendEOF()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 138
    :try_start_0
    iput-boolean v0, p0, Lgnu/text/QueueReader;->EOFseen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public checkAvailable()V
    .locals 0

    return-void
.end method

.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 207
    :try_start_0
    iput v0, p0, Lgnu/text/QueueReader;->pos:I

    .line 208
    iput v0, p0, Lgnu/text/QueueReader;->limit:I

    .line 209
    iput v0, p0, Lgnu/text/QueueReader;->mark:I

    const/4 v0, 0x1

    .line 210
    iput-boolean v0, p0, Lgnu/text/QueueReader;->EOFseen:Z

    const/4 v0, 0x0

    .line 211
    iput-object v0, p0, Lgnu/text/QueueReader;->buffer:[C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized mark(I)V
    .locals 0

    monitor-enter p0

    .line 30
    :try_start_0
    iput p1, p0, Lgnu/text/QueueReader;->readAheadLimit:I

    .line 31
    iget p1, p0, Lgnu/text/QueueReader;->pos:I

    iput p1, p0, Lgnu/text/QueueReader;->mark:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized read()I
    .locals 3

    monitor-enter p0

    .line 163
    :catch_0
    :goto_0
    :try_start_0
    iget v0, p0, Lgnu/text/QueueReader;->pos:I

    iget v1, p0, Lgnu/text/QueueReader;->limit:I

    if-lt v0, v1, :cond_1

    .line 165
    iget-boolean v0, p0, Lgnu/text/QueueReader;->EOFseen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 166
    monitor-exit p0

    return v0

    .line 167
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lgnu/text/QueueReader;->checkAvailable()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 176
    :cond_1
    :try_start_3
    iget-object v1, p0, Lgnu/text/QueueReader;->buffer:[C

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lgnu/text/QueueReader;->pos:I

    aget-char v0, v1, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 177
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([CII)I
    .locals 2

    monitor-enter p0

    if-nez p3, :cond_0

    const/4 p1, 0x0

    .line 183
    monitor-exit p0

    return p1

    .line 184
    :catch_0
    :cond_0
    :goto_0
    :try_start_0
    iget v0, p0, Lgnu/text/QueueReader;->pos:I

    iget v1, p0, Lgnu/text/QueueReader;->limit:I

    if-lt v0, v1, :cond_2

    .line 186
    iget-boolean v0, p0, Lgnu/text/QueueReader;->EOFseen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/4 p1, -0x1

    .line 187
    monitor-exit p0

    return p1

    .line 188
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lgnu/text/QueueReader;->checkAvailable()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_2
    sub-int/2addr v1, v0

    if-le p3, v1, :cond_3

    move p3, v1

    .line 200
    :cond_3
    :try_start_3
    iget-object v1, p0, Lgnu/text/QueueReader;->buffer:[C

    invoke-static {v1, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    iget p1, p0, Lgnu/text/QueueReader;->pos:I

    add-int/2addr p1, p3

    iput p1, p0, Lgnu/text/QueueReader;->pos:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 202
    monitor-exit p0

    return p3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized ready()Z
    .locals 2

    monitor-enter p0

    .line 151
    :try_start_0
    iget v0, p0, Lgnu/text/QueueReader;->pos:I

    iget v1, p0, Lgnu/text/QueueReader;->limit:I

    if-lt v0, v1, :cond_1

    iget-boolean v0, p0, Lgnu/text/QueueReader;->EOFseen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected reserveSpace(I)V
    .locals 2

    .line 143
    iget-object v0, p0, Lgnu/text/QueueReader;->buffer:[C

    if-nez v0, :cond_0

    add-int/lit8 p1, p1, 0x64

    .line 144
    new-array p1, p1, [C

    iput-object p1, p0, Lgnu/text/QueueReader;->buffer:[C

    goto :goto_0

    .line 145
    :cond_0
    array-length v0, v0

    iget v1, p0, Lgnu/text/QueueReader;->limit:I

    add-int/2addr v1, p1

    if-ge v0, v1, :cond_1

    .line 146
    invoke-virtual {p0, p1}, Lgnu/text/QueueReader;->resize(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    .line 36
    :try_start_0
    iget v0, p0, Lgnu/text/QueueReader;->readAheadLimit:I

    if-lez v0, :cond_0

    .line 37
    iget v0, p0, Lgnu/text/QueueReader;->mark:I

    iput v0, p0, Lgnu/text/QueueReader;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method resize(I)V
    .locals 6

    .line 42
    iget v0, p0, Lgnu/text/QueueReader;->limit:I

    iget v1, p0, Lgnu/text/QueueReader;->pos:I

    sub-int v2, v0, v1

    .line 43
    iget v3, p0, Lgnu/text/QueueReader;->readAheadLimit:I

    if-lez v3, :cond_0

    iget v4, p0, Lgnu/text/QueueReader;->mark:I

    sub-int v5, v1, v4

    if-gt v5, v3, :cond_0

    sub-int v2, v0, v4

    goto :goto_0

    .line 46
    :cond_0
    iput v1, p0, Lgnu/text/QueueReader;->mark:I

    .line 47
    :goto_0
    iget-object v0, p0, Lgnu/text/QueueReader;->buffer:[C

    array-length v1, v0

    add-int v3, v2, p1

    if-ge v1, v3, :cond_1

    mul-int/lit8 v1, v2, 0x2

    add-int/2addr v1, p1

    new-array p1, v1, [C

    goto :goto_1

    :cond_1
    move-object p1, v0

    .line 50
    :goto_1
    iget v1, p0, Lgnu/text/QueueReader;->mark:I

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    iput-object p1, p0, Lgnu/text/QueueReader;->buffer:[C

    .line 52
    iget p1, p0, Lgnu/text/QueueReader;->pos:I

    iget v0, p0, Lgnu/text/QueueReader;->mark:I

    sub-int/2addr p1, v0

    iput p1, p0, Lgnu/text/QueueReader;->pos:I

    .line 53
    iput v3, p0, Lgnu/text/QueueReader;->mark:I

    .line 54
    iput v2, p0, Lgnu/text/QueueReader;->limit:I

    return-void
.end method
