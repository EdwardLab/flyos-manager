.class public Lgnu/kawa/util/PreProcess;
.super Ljava/lang/Object;
.source "PreProcess.java"


# static fields
.field static final JAVA4_FEATURES:Ljava/lang/String; = "+JAVA2 +use:java.util.IdentityHashMap +use:java.lang.CharSequence +use:java.lang.Throwable.getCause +use:java.net.URI +use:java.util.regex +SAX2 +use:java.nio"

.field static final JAVA5_FEATURES:Ljava/lang/String; = "+JAVA5 +JAVA2 +use:java.util.IdentityHashMap +use:java.lang.CharSequence +use:java.lang.Throwable.getCause +use:java.net.URI +use:java.util.regex +SAX2 +use:java.nio +use:org.w3c.dom.Node +use:javax.xml.transform +JAXP-1.3 -JAXP-QName"

.field static final NO_JAVA4_FEATURES:Ljava/lang/String; = "-JAVA5 -use:java.util.IdentityHashMap -use:java.lang.CharSequence -use:java.lang.Throwable.getCause -use:java.net.URI -use:java.util.regex -use:org.w3c.dom.Node -JAXP-1.3 -use:javax.xml.transform -JAVA5 -JAVA6 -JAVA6COMPAT5 -JAXP-QName -use:java.text.Normalizer -SAX2 -use:java.nio -Android"

.field static final NO_JAVA6_FEATURES:Ljava/lang/String; = "-JAVA6 -JAVA7 -use:java.dyn -use:java.text.Normalizer"

.field static version_features:[Ljava/lang/String;


# instance fields
.field filename:Ljava/lang/String;

.field keywords:Ljava/util/Hashtable;

.field lineno:I

.field resultBuffer:[B

.field resultLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const-string v0, "java1"

    const-string v1, "-JAVA2 -JAVA5 -use:java.util.IdentityHashMap -use:java.lang.CharSequence -use:java.lang.Throwable.getCause -use:java.net.URI -use:java.util.regex -use:org.w3c.dom.Node -JAXP-1.3 -use:javax.xml.transform -JAVA5 -JAVA6 -JAVA6COMPAT5 -JAXP-QName -use:java.text.Normalizer -SAX2 -use:java.nio -Android -JAVA6 -JAVA7 -use:java.dyn -use:java.text.Normalizer"

    const-string v2, "java2"

    const-string v3, "+JAVA2 -JAVA5 -use:java.util.IdentityHashMap -use:java.lang.CharSequence -use:java.lang.Throwable.getCause -use:java.net.URI -use:java.util.regex -use:org.w3c.dom.Node -JAXP-1.3 -use:javax.xml.transform -JAVA5 -JAVA6 -JAVA6COMPAT5 -JAXP-QName -use:java.text.Normalizer -SAX2 -use:java.nio -Android -JAVA6 -JAVA7 -use:java.dyn -use:java.text.Normalizer"

    const-string v4, "java4"

    const-string v5, "-JAVA5 +JAVA2 +use:java.util.IdentityHashMap +use:java.lang.CharSequence +use:java.lang.Throwable.getCause +use:java.net.URI +use:java.util.regex +SAX2 +use:java.nio -use:org.w3c.dom.Node -JAXP-1.3 -use:javax.xml.transform -JAXP-QName -JAVA6COMPAT5 -Android -JAVA6 -JAVA7 -use:java.dyn -use:java.text.Normalizer"

    const-string v6, "java4x"

    const-string v7, "-JAVA5 +JAVA2 +use:java.util.IdentityHashMap +use:java.lang.CharSequence +use:java.lang.Throwable.getCause +use:java.net.URI +use:java.util.regex +SAX2 +use:java.nio +use:org.w3c.dom.Node +JAXP-1.3 +use:javax.xml.transform -JAXP-QName -JAVA6COMPAT5 -Android -JAVA6 -JAVA7 -use:java.dyn -use:java.text.Normalizer"

    const-string v8, "java5"

    const-string v9, "+JAVA5 +JAVA2 +use:java.util.IdentityHashMap +use:java.lang.CharSequence +use:java.lang.Throwable.getCause +use:java.net.URI +use:java.util.regex +SAX2 +use:java.nio +use:org.w3c.dom.Node +use:javax.xml.transform +JAXP-1.3 -JAXP-QName -JAVA6COMPAT5 -Android -JAVA6 -JAVA7 -use:java.dyn -use:java.text.Normalizer"

    const-string v10, "java6compat5"

    const-string v11, "+JAVA5 +JAVA2 +use:java.util.IdentityHashMap +use:java.lang.CharSequence +use:java.lang.Throwable.getCause +use:java.net.URI +use:java.util.regex +SAX2 +use:java.nio +use:org.w3c.dom.Node +use:javax.xml.transform +JAXP-1.3 -JAXP-QName -JAVA6 -JAVA7 +JAVA6COMPAT5 +use:java.text.Normalizer -use:java.dyn -Android"

    const-string v12, "java6"

    const-string v13, "+JAVA5 +JAVA2 +use:java.util.IdentityHashMap +use:java.lang.CharSequence +use:java.lang.Throwable.getCause +use:java.net.URI +use:java.util.regex +SAX2 +use:java.nio +use:org.w3c.dom.Node +use:javax.xml.transform +JAXP-1.3 -JAXP-QName +JAVA6 -JAVA7 -JAVA6COMPAT5 +use:java.text.Normalizer -use:java.dyn -Android"

    const-string v14, "java7"

    const-string v15, "+JAVA5 +JAVA2 +use:java.util.IdentityHashMap +use:java.lang.CharSequence +use:java.lang.Throwable.getCause +use:java.net.URI +use:java.util.regex +SAX2 +use:java.nio +use:org.w3c.dom.Node +use:javax.xml.transform +JAXP-1.3 -JAXP-QName +JAVA6 +JAVA7 -JAVA6COMPAT5 +use:java.text.Normalizer +use:java.dyn -Android"

    const-string v16, "android"

    const-string v17, "+JAVA5 +JAVA2 +use:java.util.IdentityHashMap +use:java.lang.CharSequence +use:java.lang.Throwable.getCause +use:java.net.URI +use:java.util.regex +SAX2 +use:java.nio +use:org.w3c.dom.Node +JAXP-1.3 -JAXP-QName -use:javax.xml.transform -JAVA6 -JAVA6COMPAT5 +Android -JAVA6 -JAVA7 -use:java.dyn -use:java.text.Normalizer"

    .line 24
    filled-new-array/range {v0 .. v17}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgnu/kawa/util/PreProcess;->version_features:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lgnu/kawa/util/PreProcess;->keywords:Ljava/util/Hashtable;

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4

    .line 341
    new-instance v0, Lgnu/kawa/util/PreProcess;

    invoke-direct {v0}, Lgnu/kawa/util/PreProcess;-><init>()V

    .line 343
    iget-object v1, v0, Lgnu/kawa/util/PreProcess;->keywords:Ljava/util/Hashtable;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "true"

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    iget-object v1, v0, Lgnu/kawa/util/PreProcess;->keywords:Ljava/util/Hashtable;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v3, "false"

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 346
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 347
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Lgnu/kawa/util/PreProcess;->handleArg(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method error(Ljava/lang/String;)V
    .locals 3

    .line 40
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lgnu/kawa/util/PreProcess;->filename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lgnu/kawa/util/PreProcess;->lineno:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 41
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public filter(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 49
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, p1, v0}, Lgnu/kawa/util/PreProcess;->filter(Ljava/lang/String;Ljava/io/BufferedInputStream;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lgnu/kawa/util/PreProcess;->resultBuffer:[B

    const/4 v2, 0x0

    iget v3, p0, Lgnu/kawa/util/PreProcess;->resultLength:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 53
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 54
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pre-processed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public filter(Ljava/lang/String;Ljava/io/BufferedInputStream;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 60
    iput-object v1, v0, Lgnu/kawa/util/PreProcess;->filename:Ljava/lang/String;

    const/16 v2, 0x7d0

    new-array v2, v2, [B

    const/4 v3, 0x1

    .line 68
    iput v3, v0, Lgnu/kawa/util/PreProcess;->lineno:I

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 80
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedInputStream;->read()I

    move-result v5

    if-gez v5, :cond_0

    goto/16 :goto_5

    :cond_0
    add-int/lit8 v3, v7, 0xa

    .line 83
    array-length v6, v2

    if-lt v3, v6, :cond_1

    mul-int/lit8 v3, v7, 0x2

    .line 85
    new-array v3, v3, [B

    const/4 v6, 0x0

    .line 86
    invoke-static {v2, v6, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v3

    :cond_1
    const/16 v3, 0xd

    const/16 v6, 0xa

    if-ne v5, v6, :cond_2

    if-lez v7, :cond_2

    add-int/lit8 v17, v7, -0x1

    .line 89
    aget-byte v6, v2, v17

    if-ne v6, v3, :cond_2

    add-int/lit8 v6, v7, 0x1

    int-to-byte v3, v5

    .line 91
    aput-byte v3, v2, v7

    move v7, v6

    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/16 v6, 0x20

    if-ltz v9, :cond_a

    if-gez v8, :cond_a

    if-gtz v10, :cond_a

    if-eq v5, v3, :cond_a

    const/16 v3, 0xa

    if-eq v5, v3, :cond_a

    if-eq v9, v11, :cond_3

    if-eq v5, v6, :cond_a

    const/16 v3, 0x9

    if-eq v5, v3, :cond_a

    :cond_3
    const/16 v3, 0x2f

    if-ne v5, v3, :cond_8

    const/16 v6, 0x64

    move-object/from16 v3, p2

    .line 107
    invoke-virtual {v3, v6}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 108
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedInputStream;->read()I

    move-result v6

    const/16 v3, 0x2f

    if-ne v6, v3, :cond_5

    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    const/16 v3, 0x2a

    if-ne v6, v3, :cond_7

    .line 113
    :cond_6
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedInputStream;->read()I

    move-result v3

    const/16 v6, 0x20

    if-eq v3, v6, :cond_6

    const/16 v6, 0x9

    if-eq v3, v6, :cond_6

    const/16 v6, 0x23

    if-eq v3, v6, :cond_4

    :cond_7
    const/4 v3, 0x1

    .line 118
    :goto_2
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedInputStream;->reset()V

    goto :goto_3

    :cond_8
    const/4 v3, 0x1

    :goto_3
    if-eqz v3, :cond_9

    add-int/lit8 v3, v7, 0x1

    const/16 v6, 0x2f

    .line 124
    aput-byte v6, v2, v7

    add-int/lit8 v7, v3, 0x1

    .line 125
    aput-byte v6, v2, v3

    add-int/lit8 v3, v7, 0x1

    const/16 v6, 0x20

    .line 126
    aput-byte v6, v2, v7

    move v7, v3

    const/4 v10, 0x1

    const/4 v13, 0x1

    goto :goto_4

    :cond_9
    const/16 v6, 0x20

    :cond_a
    :goto_4
    if-eq v5, v6, :cond_12

    const/16 v3, 0x9

    if-eq v5, v3, :cond_12

    if-gez v8, :cond_12

    if-lez v12, :cond_11

    if-eq v9, v11, :cond_11

    const/16 v3, 0x2f

    if-ne v5, v3, :cond_11

    .line 137
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedInputStream;->read()I

    move-result v5

    if-gez v5, :cond_b

    goto :goto_5

    :cond_b
    if-eq v5, v3, :cond_c

    add-int/lit8 v6, v7, 0x1

    .line 141
    aput-byte v3, v2, v7

    move v8, v7

    move v7, v6

    goto :goto_7

    .line 144
    :cond_c
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedInputStream;->read()I

    move-result v5

    if-gez v5, :cond_e

    :goto_5
    if-eqz v12, :cond_d

    .line 270
    iput v14, v0, Lgnu/kawa/util/PreProcess;->lineno:I

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unterminated "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/kawa/util/PreProcess;->error(Ljava/lang/String;)V

    .line 273
    :cond_d
    iput-object v2, v0, Lgnu/kawa/util/PreProcess;->resultBuffer:[B

    .line 274
    iput v7, v0, Lgnu/kawa/util/PreProcess;->resultLength:I

    return v13

    :cond_e
    const/16 v3, 0x20

    if-ne v5, v3, :cond_10

    .line 151
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedInputStream;->read()I

    move-result v5

    if-eq v5, v3, :cond_f

    const/16 v3, 0x9

    if-ne v5, v3, :cond_10

    :cond_f
    const/4 v8, -0x1

    goto :goto_6

    :cond_10
    move v8, v7

    :goto_6
    const/4 v10, -0x1

    const/4 v13, 0x1

    goto :goto_7

    :cond_11
    move v8, v7

    :cond_12
    :goto_7
    int-to-byte v3, v5

    .line 158
    aput-byte v3, v2, v7

    const/4 v3, 0x1

    add-int/2addr v7, v3

    const/16 v3, 0xd

    if-eq v5, v3, :cond_16

    const/16 v3, 0xa

    if-ne v5, v3, :cond_13

    goto :goto_9

    :cond_13
    if-gez v8, :cond_15

    const/16 v3, 0x9

    if-ne v5, v3, :cond_14

    add-int/lit8 v11, v11, 0x8

    and-int/lit8 v3, v11, -0x8

    goto :goto_8

    :cond_14
    add-int/lit8 v3, v11, 0x1

    :goto_8
    move v11, v3

    :cond_15
    const/4 v5, 0x1

    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_16
    :goto_9
    move/from16 v3, v16

    const/4 v5, -0x1

    const/4 v6, 0x0

    :goto_a
    add-int/lit8 v8, v7, -0x1

    if-ge v3, v8, :cond_1a

    .line 166
    aget-byte v8, v2, v3

    const/16 v10, 0x20

    if-eq v8, v10, :cond_18

    const/16 v10, 0x9

    if-eq v8, v10, :cond_19

    if-gez v5, :cond_17

    move v5, v3

    move v6, v5

    goto :goto_b

    :cond_17
    move v6, v3

    goto :goto_b

    :cond_18
    const/16 v10, 0x9

    :cond_19
    :goto_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_1a
    sub-int v3, v6, v5

    const/4 v8, 0x4

    if-lt v3, v8, :cond_2d

    .line 173
    aget-byte v3, v2, v5

    const/16 v8, 0x2f

    if-ne v3, v8, :cond_2d

    add-int/lit8 v3, v5, 0x1

    aget-byte v3, v2, v3

    const/16 v10, 0x2a

    if-ne v3, v10, :cond_2d

    add-int/lit8 v3, v6, -0x1

    aget-byte v3, v2, v3

    if-ne v3, v10, :cond_2d

    aget-byte v3, v2, v6

    if-ne v3, v8, :cond_2d

    add-int/lit8 v5, v5, 0x2

    :goto_c
    if-ge v5, v6, :cond_1b

    .line 181
    aget-byte v3, v2, v5

    const/16 v8, 0x20

    if-ne v3, v8, :cond_1c

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_1b
    const/16 v8, 0x20

    :cond_1c
    add-int/lit8 v6, v6, -0x2

    :goto_d
    if-le v6, v5, :cond_1d

    .line 185
    aget-byte v3, v2, v6

    if-ne v3, v8, :cond_1d

    add-int/lit8 v6, v6, -0x1

    const/16 v8, 0x20

    goto :goto_d

    .line 187
    :cond_1d
    aget-byte v3, v2, v5

    const/16 v8, 0x23

    if-ne v3, v8, :cond_2d

    .line 189
    new-instance v3, Ljava/lang/String;

    sub-int/2addr v6, v5

    const/4 v8, 0x1

    add-int/2addr v6, v8

    const-string v8, "ISO-8859-1"

    invoke-direct {v3, v2, v5, v6, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    const/16 v5, 0x20

    .line 192
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 195
    iget v14, v0, Lgnu/kawa/util/PreProcess;->lineno:I

    if-lez v5, :cond_1e

    const/4 v6, 0x0

    .line 198
    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 199
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 200
    iget-object v10, v0, Lgnu/kawa/util/PreProcess;->keywords:Ljava/util/Hashtable;

    invoke-virtual {v10, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v15, v8

    goto :goto_e

    :cond_1e
    const/4 v6, 0x0

    const-string v5, ""

    move-object v15, v3

    const/4 v10, 0x0

    :goto_e
    const-string v8, "#ifdef"

    .line 208
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_27

    const-string v8, "#ifndef"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f

    goto/16 :goto_11

    :cond_1f
    const-string v5, "#else"

    .line 226
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v8, "unexpected "

    if-eqz v5, :cond_22

    if-nez v12, :cond_20

    .line 229
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgnu/kawa/util/PreProcess;->error(Ljava/lang/String;)V

    goto/16 :goto_14

    :cond_20
    if-ne v12, v4, :cond_21

    const/4 v4, 0x0

    const/4 v9, -0x1

    goto/16 :goto_14

    :cond_21
    if-nez v4, :cond_29

    :goto_f
    move v9, v11

    move v4, v12

    goto/16 :goto_14

    :cond_22
    const-string v5, "#endif"

    .line 242
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    if-nez v12, :cond_23

    .line 245
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgnu/kawa/util/PreProcess;->error(Ljava/lang/String;)V

    :cond_23
    if-ne v12, v4, :cond_24

    const/4 v4, 0x0

    const/4 v9, -0x1

    goto :goto_10

    :cond_24
    if-lez v4, :cond_25

    move v9, v11

    :cond_25
    :goto_10
    add-int/lit8 v12, v12, -0x1

    goto :goto_14

    .line 256
    :cond_26
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unknown command: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgnu/kawa/util/PreProcess;->error(Ljava/lang/String;)V

    goto :goto_14

    :cond_27
    :goto_11
    if-nez v10, :cond_28

    .line 212
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lgnu/kawa/util/PreProcess;->lineno:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ": warning - undefined keyword: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 214
    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_28
    add-int/lit8 v12, v12, 0x1

    if-lez v4, :cond_2a

    :cond_29
    move v9, v11

    goto :goto_14

    :cond_2a
    const/4 v3, 0x3

    .line 219
    invoke-virtual {v15, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x6e

    if-ne v3, v5, :cond_2b

    const/4 v3, 0x1

    goto :goto_12

    :cond_2b
    const/4 v3, 0x0

    :goto_12
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v10, v5, :cond_2c

    const/4 v5, 0x1

    goto :goto_13

    :cond_2c
    const/4 v5, 0x0

    :goto_13
    if-eq v3, v5, :cond_2e

    goto/16 :goto_f

    :cond_2d
    const/4 v6, 0x0

    .line 262
    :cond_2e
    :goto_14
    iget v3, v0, Lgnu/kawa/util/PreProcess;->lineno:I

    const/4 v5, 0x1

    add-int/2addr v3, v5

    iput v3, v0, Lgnu/kawa/util/PreProcess;->lineno:I

    move/from16 v16, v7

    const/4 v8, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    goto/16 :goto_1
.end method

.method handleArg(Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    .line 280
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/16 v4, 0x25

    if-ne v1, v4, :cond_2

    .line 282
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 285
    :goto_0
    sget-object p1, Lgnu/kawa/util/PreProcess;->version_features:[Ljava/lang/String;

    array-length p1, p1

    if-lt v0, p1, :cond_0

    .line 287
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 288
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 290
    :cond_0
    sget-object p1, Lgnu/kawa/util/PreProcess;->version_features:[Ljava/lang/String;

    aget-object p1, p1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 292
    sget-object p1, Lgnu/kawa/util/PreProcess;->version_features:[Ljava/lang/String;

    add-int/2addr v0, v3

    aget-object p1, p1, v0

    .line 293
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(variant "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " maps to: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 294
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 295
    :goto_1
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 296
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/kawa/util/PreProcess;->handleArg(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 301
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x2b

    if-ne v1, v4, :cond_3

    .line 302
    iget-object v0, p0, Lgnu/kawa/util/PreProcess;->keywords:Ljava/util/Hashtable;

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 303
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_8

    const/16 v0, 0x3d

    .line 305
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-le v0, v3, :cond_7

    .line 308
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v1, :cond_4

    const/4 v1, 0x2

    goto :goto_2

    :cond_4
    const/4 v1, 0x1

    :goto_2
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/2addr v0, v3

    .line 310
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 311
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v3, "true"

    .line 312
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 313
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_5
    const-string v3, "false"

    .line 314
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 316
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 317
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 319
    :cond_6
    :goto_3
    iget-object p1, p0, Lgnu/kawa/util/PreProcess;->keywords:Ljava/util/Hashtable;

    invoke-virtual {p1, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 322
    :cond_7
    iget-object v0, p0, Lgnu/kawa/util/PreProcess;->keywords:Ljava/util/Hashtable;

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 328
    :cond_8
    :try_start_0
    invoke-virtual {p0, p1}, Lgnu/kawa/util/PreProcess;->filter(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    .line 332
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "caught "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 334
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    :cond_9
    :goto_4
    return-void
.end method
