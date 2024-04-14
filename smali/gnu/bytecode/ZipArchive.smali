.class public Lgnu/bytecode/ZipArchive;
.super Ljava/lang/Object;
.source "ZipArchive.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;[B)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 28
    :goto_0
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-gtz v2, :cond_0

    return-wide v0

    :cond_0
    const/4 v3, 0x0

    .line 31
    invoke-virtual {p1, p2, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/lang/String;[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 43
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 45
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mkdirs:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 47
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v1, 0x2f

    if-eq p1, v1, :cond_1

    .line 49
    new-instance p1, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p1, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 50
    invoke-static {p0, p1, p2}, Lgnu/bytecode/ZipArchive;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;[B)J

    .line 51
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    :cond_1
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "t"

    .line 77
    array-length v1, p0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 78
    invoke-static {}, Lgnu/bytecode/ZipArchive;->usage()V

    :cond_0
    const/4 v1, 0x0

    .line 79
    aget-object v3, p0, v1

    const/4 v4, 0x1

    .line 80
    aget-object v4, p0, v4

    .line 84
    :try_start_0
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, " - not found"

    const-string v7, "p"

    if-nez v5, :cond_7

    :try_start_1
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "x"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string v0, "q"

    .line 145
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 147
    new-instance v0, Ljava/util/zip/ZipOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 149
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_5

    .line 151
    new-instance v3, Ljava/io/File;

    aget-object v4, p0, v2

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 154
    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 156
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v5, v4

    .line 157
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 158
    new-array v7, v5, [B

    .line 159
    invoke-virtual {v4, v7}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    if-ne v8, v5, :cond_2

    .line 161
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 163
    new-instance v4, Ljava/util/zip/ZipEntry;

    aget-object v8, p0, v2

    invoke-direct {v4, v8}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    int-to-long v8, v5

    .line 164
    invoke-virtual {v4, v8, v9}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 165
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 166
    invoke-virtual {v0, v4}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 167
    invoke-virtual {v0, v7, v1, v5}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 160
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p0, p0, v2

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " - read error"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p0, p0, v2

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " - not readable"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p0, p0, v2

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_5
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->close()V

    goto/16 :goto_5

    .line 172
    :cond_6
    invoke-static {}, Lgnu/bytecode/ZipArchive;->usage()V

    goto/16 :goto_5

    .line 88
    :cond_7
    :goto_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v5, 0x400

    new-array v5, v5, [B

    .line 90
    array-length v8, p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v9, " size: "

    if-ne v8, v2, :cond_a

    .line 92
    :try_start_2
    new-instance p0, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 94
    new-instance v2, Ljava/util/zip/ZipInputStream;

    invoke-direct {v2, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 96
    :goto_2
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 98
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 99
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 101
    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v1, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Ljava/io/PrintStream;->println(J)V

    goto :goto_2

    .line 105
    :cond_8
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 107
    invoke-static {v2, v1, v5}, Lgnu/bytecode/ZipArchive;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;[B)J

    goto :goto_2

    .line 111
    :cond_9
    invoke-static {v2, v4, v5}, Lgnu/bytecode/ZipArchive;->copy(Ljava/io/InputStream;Ljava/lang/String;[B)V

    goto :goto_2

    .line 117
    :cond_a
    new-instance v8, Ljava/util/zip/ZipFile;

    invoke-direct {v8, v4}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 118
    :goto_3
    array-length v10, p0

    if-ge v2, v10, :cond_e

    .line 120
    aget-object v10, p0, v2

    .line 121
    invoke-virtual {v8, v10}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v11

    if-nez v11, :cond_b

    .line 124
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "zipfile "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v12, p0, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v10, -0x1

    .line 126
    invoke-static {v10}, Ljava/lang/System;->exit(I)V

    goto :goto_4

    .line 128
    :cond_b
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 130
    invoke-virtual {v1, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v1, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v11}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Ljava/io/PrintStream;->println(J)V

    goto :goto_4

    .line 134
    :cond_c
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 136
    invoke-virtual {v8, v11}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v10

    invoke-static {v10, v1, v5}, Lgnu/bytecode/ZipArchive;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;[B)J

    goto :goto_4

    .line 140
    :cond_d
    invoke-virtual {v8, v11}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v11

    invoke-static {v11, v10, v5}, Lgnu/bytecode/ZipArchive;->copy(Ljava/io/InputStream;Ljava/lang/String;[B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :catch_0
    move-exception p0

    .line 176
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "I/O Exception:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_e
    :goto_5
    return-void
.end method

.method private static usage()V
    .locals 2

    .line 18
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "zipfile [ptxq] archive [file ...]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 19
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method
