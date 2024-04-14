.class public Lgnu/bytecode/dump;
.super Lgnu/bytecode/ClassFileInput;
.source "dump.java"


# instance fields
.field writer:Lgnu/bytecode/ClassTypeWriter;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Lgnu/bytecode/ClassTypeWriter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassFormatError;
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1}, Lgnu/bytecode/ClassFileInput;-><init>(Ljava/io/InputStream;)V

    .line 35
    new-instance p1, Lgnu/bytecode/ClassType;

    invoke-direct {p1}, Lgnu/bytecode/ClassType;-><init>()V

    iput-object p1, p0, Lgnu/bytecode/dump;->ctype:Lgnu/bytecode/ClassType;

    .line 36
    invoke-virtual {p0}, Lgnu/bytecode/dump;->readFormatVersion()V

    .line 38
    invoke-virtual {p0}, Lgnu/bytecode/dump;->readConstants()Lgnu/bytecode/ConstantPool;

    .line 39
    invoke-virtual {p0}, Lgnu/bytecode/dump;->readClassInfo()V

    .line 40
    invoke-virtual {p0}, Lgnu/bytecode/dump;->readFields()V

    .line 41
    invoke-virtual {p0}, Lgnu/bytecode/dump;->readMethods()V

    .line 42
    iget-object p1, p0, Lgnu/bytecode/dump;->ctype:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, p1}, Lgnu/bytecode/dump;->readAttributes(Lgnu/bytecode/AttrContainer;)I

    .line 44
    iget-object p1, p0, Lgnu/bytecode/dump;->ctype:Lgnu/bytecode/ClassType;

    invoke-virtual {p2, p1}, Lgnu/bytecode/ClassTypeWriter;->print(Lgnu/bytecode/ClassType;)V

    .line 45
    invoke-virtual {p2}, Lgnu/bytecode/ClassTypeWriter;->flush()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 17

    move-object/from16 v1, p0

    const-string v2, "jar:"

    .line 153
    array-length v3, v1

    .line 154
    new-instance v4, Lgnu/bytecode/ClassTypeWriter;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v0, v6}, Lgnu/bytecode/ClassTypeWriter;-><init>(Lgnu/bytecode/ClassType;Ljava/io/OutputStream;I)V

    if-nez v3, :cond_0

    .line 156
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {v0}, Lgnu/bytecode/dump;->usage(Ljava/io/PrintStream;)V

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-ge v7, v3, :cond_a

    .line 159
    aget-object v8, v1, v7

    const-string v0, "-verbose"

    .line 160
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "--verbose"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_7

    .line 165
    :cond_1
    invoke-static {v8}, Lgnu/bytecode/dump;->uriSchemeSpecified(Ljava/lang/String;)Z

    move-result v0

    const-string v9, ".class"

    const/16 v10, 0x2e

    const-string v11, " not found."

    const/16 v12, 0x2f

    if-eqz v0, :cond_8

    .line 171
    :try_start_0
    invoke-virtual {v8, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v14, 0x21

    if-eqz v0, :cond_4

    const/4 v15, 0x4

    .line 174
    invoke-virtual {v8, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 176
    invoke-static {v15}, Lgnu/bytecode/dump;->uriSchemeSpecified(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 178
    invoke-virtual {v15, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_2

    .line 181
    invoke-virtual {v15, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 183
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v8

    .line 187
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_2
    const-string v5, "!/"

    .line 191
    invoke-virtual {v15, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_4

    .line 193
    invoke-virtual {v8, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    if-gtz v5, :cond_3

    const/4 v5, 0x0

    goto :goto_1

    .line 196
    :cond_3
    invoke-virtual {v8, v12, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v13

    if-gez v13, :cond_4

    add-int/lit8 v5, v5, 0x1

    .line 198
    invoke-virtual {v8, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 199
    invoke-virtual {v13, v10, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    .line 200
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    :cond_4
    move v5, v0

    .line 207
    :goto_1
    :try_start_1
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/zip/ZipException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 210
    :try_start_2
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_2
    .catch Ljava/util/zip/ZipException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_5

    :catch_0
    move-exception v0

    if-eqz v5, :cond_6

    .line 216
    :try_start_3
    invoke-virtual {v9}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v5

    .line 217
    invoke-virtual {v5, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    if-lez v9, :cond_5

    .line 219
    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/util/zip/ZipException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 222
    :cond_5
    :try_start_4
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/util/zip/ZipException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    .line 226
    :catch_1
    :try_start_5
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v10, "Jar File for URL "

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 227
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v9, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 228
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v5, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v5, -0x1

    .line 229
    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    .line 232
    :cond_6
    :goto_2
    throw v0
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/util/zip/ZipException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :catch_2
    move-exception v0

    .line 245
    :try_start_6
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v9, "Error opening zip archive "

    invoke-virtual {v5, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 246
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v5, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 247
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v5, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v0}, Ljava/util/zip/ZipException;->printStackTrace()V

    .line 249
    invoke-virtual {v0}, Ljava/util/zip/ZipException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 250
    invoke-virtual {v0}, Ljava/util/zip/ZipException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    const/4 v5, -0x1

    .line 251
    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_4

    .line 237
    :catch_3
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "File for URL "

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 238
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 239
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v5, -0x1

    .line 240
    invoke-static {v5}, Ljava/lang/System;->exit(I)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    .line 259
    :cond_8
    :try_start_7
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_6

    .line 267
    :catch_5
    :try_start_8
    invoke-static {v8}, Lgnu/bytecode/ObjectType;->getContextClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 268
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    .line 276
    :catchall_0
    :try_start_9
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "File "

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 277
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 278
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v5, -0x1

    .line 279
    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    const/4 v0, 0x0

    goto :goto_3

    .line 272
    :catch_6
    invoke-static {}, Lgnu/bytecode/ObjectType;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 284
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 287
    :try_start_a
    invoke-virtual {v0, v5}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 288
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 289
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-object v0, v5

    goto :goto_5

    :catchall_1
    move-exception v0

    .line 293
    :try_start_b
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v9, "Can\'t find .class file for class "

    invoke-virtual {v5, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 294
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v5, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 295
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v9, " - "

    invoke-virtual {v5, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 296
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    const/4 v5, -0x1

    .line 297
    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    :goto_4
    const/4 v0, 0x0

    .line 302
    :goto_5
    invoke-static {v0, v8, v4}, Lgnu/bytecode/dump;->process(Ljava/io/InputStream;Ljava/lang/String;Lgnu/bytecode/ClassTypeWriter;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_8

    .line 307
    :goto_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 308
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v8, "caught "

    invoke-virtual {v5, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 309
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    const/4 v5, -0x1

    .line 310
    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    goto :goto_8

    :cond_9
    :goto_7
    const/16 v0, 0xf

    .line 162
    invoke-virtual {v4, v0}, Lgnu/bytecode/ClassTypeWriter;->setFlags(I)V

    :goto_8
    add-int/lit8 v7, v7, 0x1

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public static process(Ljava/io/InputStream;Ljava/lang/String;Lgnu/bytecode/ClassTypeWriter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p0, 0x5

    .line 92
    invoke-virtual {v0, p0}, Ljava/io/InputStream;->mark(I)V

    .line 93
    invoke-static {v0}, Lgnu/bytecode/dump;->readMagic(Ljava/io/InputStream;)I

    move-result p0

    const v1, -0x35014542    # -8346975.0f

    const/16 v2, 0x2e

    if-ne p0, v1, :cond_0

    const-string p0, "Reading .class from "

    .line 96
    invoke-virtual {p2, p0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2, p1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2, v2}, Lgnu/bytecode/ClassTypeWriter;->println(C)V

    .line 99
    new-instance p0, Lgnu/bytecode/dump;

    invoke-direct {p0, v0, p2}, Lgnu/bytecode/dump;-><init>(Ljava/io/InputStream;Lgnu/bytecode/ClassTypeWriter;)V

    goto/16 :goto_1

    :cond_0
    const v3, 0x504b0304

    const/4 v4, -0x1

    if-ne p0, v3, :cond_4

    .line 103
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    const-string p0, "Reading classes from archive "

    .line 104
    invoke-virtual {p2, p0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2, p1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2, v2}, Lgnu/bytecode/ClassTypeWriter;->println(C)V

    .line 107
    new-instance p0, Ljava/util/zip/ZipInputStream;

    invoke-direct {p0, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 109
    :goto_0
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 111
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Archive directory: "

    .line 114
    invoke-virtual {p2, p1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2, v2}, Lgnu/bytecode/ClassTypeWriter;->println(C)V

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {p2}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 121
    invoke-static {p0}, Lgnu/bytecode/dump;->readMagic(Ljava/io/InputStream;)I

    move-result p1

    if-ne p1, v1, :cond_2

    const-string p1, "Reading class member: "

    .line 124
    invoke-virtual {p2, p1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2, v2}, Lgnu/bytecode/ClassTypeWriter;->println(C)V

    .line 127
    new-instance p1, Lgnu/bytecode/dump;

    invoke-direct {p1, p0, p2}, Lgnu/bytecode/dump;-><init>(Ljava/io/InputStream;Lgnu/bytecode/ClassTypeWriter;)V

    goto :goto_0

    :cond_2
    const-string p1, "Skipping non-class member: "

    .line 131
    invoke-virtual {p2, p1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2, v2}, Lgnu/bytecode/ClassTypeWriter;->println(C)V

    goto :goto_0

    .line 137
    :cond_3
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    goto :goto_1

    .line 141
    :cond_4
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "File "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid .class file"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 142
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    :goto_1
    return-void
.end method

.method public static process(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/OutputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    new-instance v0, Lgnu/bytecode/ClassTypeWriter;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, p3}, Lgnu/bytecode/ClassTypeWriter;-><init>(Lgnu/bytecode/ClassType;Ljava/io/OutputStream;I)V

    invoke-static {p0, p1, v0}, Lgnu/bytecode/dump;->process(Ljava/io/InputStream;Ljava/lang/String;Lgnu/bytecode/ClassTypeWriter;)V

    return-void
.end method

.method public static process(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/Writer;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    new-instance v0, Lgnu/bytecode/ClassTypeWriter;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, p3}, Lgnu/bytecode/ClassTypeWriter;-><init>(Lgnu/bytecode/ClassType;Ljava/io/Writer;I)V

    invoke-static {p0, p1, v0}, Lgnu/bytecode/dump;->process(Ljava/io/InputStream;Ljava/lang/String;Lgnu/bytecode/ClassTypeWriter;)V

    return-void
.end method

.method static readMagic(Ljava/io/InputStream;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    .line 65
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    if-gez v2, :cond_0

    goto :goto_1

    :cond_0
    shl-int/lit8 v1, v1, 0x8

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method static uriSchemeLength(Ljava/lang/String;)I
    .locals 5

    .line 325
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-ge v1, v0, :cond_3

    .line 328
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_0

    return v1

    :cond_0
    if-nez v1, :cond_1

    .line 331
    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_1
    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-nez v4, :cond_2

    const/16 v4, 0x2b

    if-eq v3, v4, :cond_2

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_2

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_2

    :goto_1
    return v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method static uriSchemeSpecified(Ljava/lang/String;)Z
    .locals 5

    .line 348
    invoke-static {p0}, Lgnu/bytecode/dump;->uriSchemeLength(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 349
    sget-char v3, Ljava/io/File;->separatorChar:C

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_3

    .line 351
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x5a

    if-le p0, v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    if-lez v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public static usage(Ljava/io/PrintStream;)V
    .locals 1

    const-string v0, "Prints and dis-assembles the contents of JVM .class files."

    .line 360
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "Usage: [--verbose] class-or-jar ..."

    .line 361
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "where a class-or-jar can be one of:"

    .line 362
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "- a fully-qualified class name; or"

    .line 363
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "- the name of a .class file, or a URL reference to one; or"

    .line 364
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "- the name of a .jar or .zip archive file, or a URL reference to one."

    .line 365
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "If a .jar/.zip archive is named, all its.class file members are printed."

    .line 366
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    const-string v0, "You can name a single .class member of an archive with a jar: URL,"

    .line 368
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "which looks like: jar:jar-spec!/p1/p2/cl.class"

    .line 369
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "The jar-spec can be a URL or the name of the .jar file."

    .line 370
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "You can also use the shorthand syntax: jar:jar-spec!p1.p2.cl"

    .line 371
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    .line 372
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    return-void
.end method


# virtual methods
.method public readAttribute(Ljava/lang/String;ILgnu/bytecode/AttrContainer;)Lgnu/bytecode/Attribute;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-super {p0, p1, p2, p3}, Lgnu/bytecode/ClassFileInput;->readAttribute(Ljava/lang/String;ILgnu/bytecode/AttrContainer;)Lgnu/bytecode/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public readConstants()Lgnu/bytecode/ConstantPool;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lgnu/bytecode/dump;->ctype:Lgnu/bytecode/ClassType;

    invoke-super {p0}, Lgnu/bytecode/ClassFileInput;->readConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v1

    iput-object v1, v0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    .line 51
    iget-object v0, p0, Lgnu/bytecode/dump;->ctype:Lgnu/bytecode/ClassType;

    iget-object v0, v0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    return-object v0
.end method
