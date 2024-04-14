.class public abstract Lgnu/expr/Language;
.super Ljava/lang/Object;
.source "Language.java"


# static fields
.field public static final FUNCTION_NAMESPACE:I = 0x2

.field public static final NAMESPACE_PREFIX_NAMESPACE:I = 0x4

.field public static final PARSE_CURRENT_NAMES:I = 0x2

.field public static final PARSE_EXPLICIT:I = 0x40

.field public static final PARSE_FOR_APPLET:I = 0x10

.field public static final PARSE_FOR_EVAL:I = 0x3

.field public static final PARSE_FOR_SERVLET:I = 0x20

.field public static final PARSE_IMMEDIATE:I = 0x1

.field public static final PARSE_ONE_LINE:I = 0x4

.field public static final PARSE_PROLOG:I = 0x8

.field public static final VALUE_NAMESPACE:I = 0x1

.field protected static final current:Ljava/lang/InheritableThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/InheritableThreadLocal<",
            "Lgnu/expr/Language;",
            ">;"
        }
    .end annotation
.end field

.field static envCounter:I

.field protected static env_counter:I

.field protected static global:Lgnu/expr/Language;

.field static languages:[[Ljava/lang/String;

.field public static requirePedantic:Z


# instance fields
.field protected environ:Lgnu/mapping/Environment;

.field protected userEnv:Lgnu/mapping/Environment;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 26
    new-instance v0, Ljava/lang/InheritableThreadLocal;

    invoke-direct {v0}, Ljava/lang/InheritableThreadLocal;-><init>()V

    sput-object v0, Lgnu/expr/Language;->current:Ljava/lang/InheritableThreadLocal;

    .line 36
    invoke-static {}, Lgnu/expr/BuiltinEnvironment;->getInstance()Lgnu/expr/BuiltinEnvironment;

    move-result-object v0

    invoke-static {v0}, Lgnu/mapping/Environment;->setGlobal(Lgnu/mapping/Environment;)V

    const/16 v0, 0x8

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "scheme"

    const-string v2, ".scm"

    const-string v3, ".sc"

    const-string v4, "kawa.standard.Scheme"

    .line 62
    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "krl"

    const-string v3, ".krl"

    const-string v4, "gnu.kawa.brl.BRL"

    filled-new-array {v1, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "brl"

    const-string v3, ".brl"

    filled-new-array {v1, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "emacs"

    const-string v3, "elisp"

    const-string v4, "emacs-lisp"

    const-string v5, ".el"

    const-string v6, "gnu.jemacs.lang.ELisp"

    filled-new-array {v1, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const-string v1, "xquery"

    const-string v3, ".xquery"

    const-string v4, ".xq"

    const-string v5, ".xql"

    const-string v6, "gnu.xquery.lang.XQuery"

    filled-new-array {v1, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v0, v3

    const-string v1, "q2"

    const-string v3, ".q2"

    const-string v4, "gnu.q2.lang.Q2"

    filled-new-array {v1, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x5

    aput-object v1, v0, v3

    const-string v1, "xslt"

    const-string v3, "xsl"

    const-string v4, ".xsl"

    const-string v5, "gnu.kawa.xslt.XSLT"

    filled-new-array {v1, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x6

    aput-object v1, v0, v3

    const-string v4, "commonlisp"

    const-string v5, "common-lisp"

    const-string v6, "clisp"

    const-string v7, "lisp"

    const-string v8, ".lisp"

    const-string v9, ".lsp"

    const-string v10, ".cl"

    const-string v11, "gnu.commonlisp.lang.CommonLisp"

    filled-new-array/range {v4 .. v11}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x7

    aput-object v1, v0, v3

    sput-object v0, Lgnu/expr/Language;->languages:[[Ljava/lang/String;

    .line 954
    sput v2, Lgnu/expr/Language;->env_counter:I

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    invoke-static {}, Lgnu/expr/KawaConvert;->getInstance()Lgnu/lists/Convert;

    move-result-object v0

    invoke-static {v0}, Lgnu/lists/Convert;->setInstance(Lgnu/lists/Convert;)V

    return-void
.end method

.method public static detect(Lgnu/mapping/InPort;)Lgnu/expr/Language;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x12c

    .line 128
    invoke-virtual {p0, v1}, Lgnu/mapping/InPort;->mark(I)V

    const/16 v1, 0x50

    .line 129
    invoke-virtual {p0, v0, v1}, Lgnu/mapping/InPort;->readLine(Ljava/lang/StringBuffer;C)V

    .line 130
    invoke-virtual {p0}, Lgnu/mapping/InPort;->reset()V

    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lgnu/expr/Language;->detect(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object p0

    return-object p0
.end method

.method public static detect(Ljava/io/InputStream;)Lgnu/expr/Language;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 106
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0xc8

    .line 107
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 110
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lt v2, v1, :cond_1

    goto :goto_1

    .line 112
    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    if-ltz v2, :cond_3

    const/16 v3, 0xa

    if-eq v2, v3, :cond_3

    const/16 v3, 0xd

    if-ne v2, v3, :cond_2

    goto :goto_1

    :cond_2
    int-to-char v2, v2

    .line 115
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 117
    :cond_3
    :goto_1
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lgnu/expr/Language;->detect(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object p0

    return-object p0
.end method

.method public static detect(Ljava/lang/String;)Lgnu/expr/Language;
    .locals 6

    .line 140
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "kawa:"

    .line 142
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    add-int/lit8 v0, v0, 0x5

    move v1, v0

    .line 148
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-le v1, v0, :cond_1

    .line 152
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-static {v0}, Lgnu/expr/Language;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const-string v0, "-*- scheme -*-"

    .line 159
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "scheme"

    if-ltz v0, :cond_2

    .line 160
    invoke-static {v1}, Lgnu/expr/Language;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v0, "-*- xquery -*-"

    .line 161
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v2, "xquery"

    if-ltz v0, :cond_3

    .line 162
    invoke-static {v2}, Lgnu/expr/Language;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object p0

    return-object p0

    :cond_3
    const-string v0, "-*- emacs-lisp -*-"

    .line 163
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_4

    const-string p0, "elisp"

    .line 164
    invoke-static {p0}, Lgnu/expr/Language;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object p0

    return-object p0

    :cond_4
    const-string v0, "-*- common-lisp -*-"

    .line 165
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_a

    const-string v0, "-*- lisp -*-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    .line 169
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x28

    const/4 v5, 0x1

    if-ne v3, v4, :cond_6

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_7

    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x7

    if-lt v3, v4, :cond_8

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "xquery "

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 171
    :cond_7
    invoke-static {v2}, Lgnu/expr/Language;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object p0

    return-object p0

    .line 172
    :cond_8
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x3b

    if-ne v0, v2, :cond_9

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, v2, :cond_9

    .line 173
    invoke-static {v1}, Lgnu/expr/Language;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0

    :cond_a
    :goto_1
    const-string p0, "common-lisp"

    .line 167
    invoke-static {p0}, Lgnu/expr/Language;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultLanguage()Lgnu/expr/Language;
    .locals 1

    .line 32
    sget-object v0, Lgnu/expr/Language;->current:Ljava/lang/InheritableThreadLocal;

    invoke-virtual {v0}, Ljava/lang/InheritableThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/expr/Language;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    sget-object v0, Lgnu/expr/Language;->global:Lgnu/expr/Language;

    :goto_0
    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Lgnu/expr/Language;
    .locals 7

    .line 193
    sget-object v0, Lgnu/expr/Language;->languages:[[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 196
    sget-object v3, Lgnu/expr/Language;->languages:[[Ljava/lang/String;

    aget-object v3, v3, v2

    .line 197
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    move v5, v4

    :cond_0
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_2

    if-eqz p0, :cond_1

    .line 200
    aget-object v6, v3, v5

    invoke-virtual {v6, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 205
    :cond_1
    :try_start_0
    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    aget-object v0, v3, v1

    invoke-static {v0, p0}, Lgnu/expr/Language;->getInstance(Ljava/lang/String;Ljava/lang/Class;)Lgnu/expr/Language;

    move-result-object p0

    return-object p0

    :catch_0
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/Class;)Lgnu/expr/Language;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 234
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "Instance"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 238
    invoke-virtual {p1, p0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string p0, "getInstance"

    .line 242
    invoke-virtual {p1, p0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    :goto_0
    const/4 v0, 0x0

    .line 245
    sget-object v1, Lgnu/mapping/Values;->noArgs:[Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgnu/expr/Language;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    .line 249
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 251
    instance-of v0, p0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_0

    .line 252
    check-cast p0, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p0

    .line 256
    :cond_0
    new-instance v0, Lgnu/mapping/WrappedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInstance for \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' failed"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static getInstanceFromFilenameExtension(Ljava/lang/String;)Lgnu/expr/Language;
    .locals 1

    const/16 v0, 0x2e

    .line 179
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 182
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lgnu/expr/Language;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getLanguages()[[Ljava/lang/String;
    .locals 1

    .line 80
    sget-object v0, Lgnu/expr/Language;->languages:[[Ljava/lang/String;

    return-object v0
.end method

.method public static registerLanguage([Ljava/lang/String;)V
    .locals 5

    .line 92
    sget-object v0, Lgnu/expr/Language;->languages:[[Ljava/lang/String;

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v2, v1, [[Ljava/lang/String;

    .line 93
    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, -0x1

    .line 94
    aput-object p0, v2, v1

    .line 95
    sput-object v2, Lgnu/expr/Language;->languages:[[Ljava/lang/String;

    return-void
.end method

.method public static restoreCurrent(Lgnu/expr/Language;)V
    .locals 1

    .line 52
    sget-object v0, Lgnu/expr/Language;->current:Ljava/lang/InheritableThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/InheritableThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static setCurrentLanguage(Lgnu/expr/Language;)V
    .locals 1

    .line 40
    sget-object v0, Lgnu/expr/Language;->current:Ljava/lang/InheritableThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/InheritableThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static declared-synchronized setDefaults(Lgnu/expr/Language;)V
    .locals 2

    const-class v0, Lgnu/expr/Language;

    monitor-enter v0

    .line 840
    :try_start_0
    invoke-static {p0}, Lgnu/expr/Language;->setCurrentLanguage(Lgnu/expr/Language;)V

    .line 841
    sput-object p0, Lgnu/expr/Language;->global:Lgnu/expr/Language;

    .line 845
    invoke-static {}, Lgnu/mapping/Environment;->getGlobal()Lgnu/mapping/Environment;

    move-result-object p0

    invoke-static {}, Lgnu/expr/BuiltinEnvironment;->getInstance()Lgnu/expr/BuiltinEnvironment;

    move-result-object v1

    if-ne p0, v1, :cond_0

    .line 846
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object p0

    invoke-static {p0}, Lgnu/mapping/Environment;->setGlobal(Lgnu/mapping/Environment;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 847
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setSaveCurrent(Lgnu/expr/Language;)Lgnu/expr/Language;
    .locals 2

    .line 45
    sget-object v0, Lgnu/expr/Language;->current:Ljava/lang/InheritableThreadLocal;

    invoke-virtual {v0}, Ljava/lang/InheritableThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/expr/Language;

    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/InheritableThreadLocal;->set(Ljava/lang/Object;)V

    return-object v1
.end method

.method public static string2Type(Ljava/lang/String;)Lgnu/bytecode/Type;
    .locals 3

    const-string v0, "[]"

    .line 573
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 575
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lgnu/expr/Language;->string2Type(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v1

    .line 578
    :cond_0
    invoke-static {p0}, Lgnu/bytecode/ArrayType;->make(Lgnu/bytecode/Type;)Lgnu/bytecode/ArrayType;

    move-result-object p0

    goto :goto_0

    .line 580
    :cond_1
    invoke-static {p0}, Lgnu/bytecode/Type;->isValidJavaTypeName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 581
    invoke-static {p0}, Lgnu/bytecode/Type;->getType(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_2
    return-object v1
.end method

.method public static unionType(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Type;
    .locals 6

    .line 692
    sget-object v0, Lgnu/bytecode/Type;->toStringType:Lgnu/bytecode/ClassType;

    if-ne p0, v0, :cond_0

    .line 693
    sget-object p0, Lgnu/bytecode/Type;->javalangStringType:Lgnu/bytecode/ClassType;

    .line 694
    :cond_0
    sget-object v0, Lgnu/bytecode/Type;->toStringType:Lgnu/bytecode/ClassType;

    if-ne p1, v0, :cond_1

    .line 695
    sget-object p1, Lgnu/bytecode/Type;->javalangStringType:Lgnu/bytecode/ClassType;

    :cond_1
    if-ne p0, p1, :cond_2

    return-object p0

    .line 698
    :cond_2
    instance-of v0, p0, Lgnu/bytecode/PrimType;

    if-eqz v0, :cond_c

    instance-of v0, p1, Lgnu/bytecode/PrimType;

    if-eqz v0, :cond_c

    .line 700
    invoke-virtual {p0}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 701
    invoke-virtual {p1}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v0, v1, :cond_3

    return-object p0

    :cond_3
    const/16 v2, 0x4a

    const/16 v3, 0x53

    const/16 v4, 0x42

    const/16 v5, 0x49

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_4

    if-ne v0, v5, :cond_5

    :cond_4
    if-eq v1, v5, :cond_b

    if-ne v1, v2, :cond_5

    goto :goto_1

    :cond_5
    if-eq v1, v4, :cond_6

    if-eq v1, v3, :cond_6

    if-ne v1, v5, :cond_7

    :cond_6
    if-eq v0, v5, :cond_a

    if-ne v0, v2, :cond_7

    goto :goto_0

    :cond_7
    const/16 v2, 0x44

    const/16 v3, 0x46

    if-ne v0, v3, :cond_8

    if-ne v1, v2, :cond_8

    return-object p1

    :cond_8
    if-ne v1, v3, :cond_9

    if-ne v0, v2, :cond_9

    return-object p0

    .line 712
    :cond_9
    sget-object p0, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    :cond_a
    :goto_0
    return-object p0

    :cond_b
    :goto_1
    return-object p1

    .line 716
    :cond_c
    sget-object p0, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    return-object p0
.end method


# virtual methods
.method public final asType(Ljava/lang/Object;)Lgnu/bytecode/Type;
    .locals 1

    const/4 v0, 0x1

    .line 616
    invoke-virtual {p0, p1, v0}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Object;Z)Lgnu/bytecode/Type;

    move-result-object v0

    if-nez v0, :cond_0

    .line 617
    move-object v0, p1

    check-cast v0, Lgnu/bytecode/Type;

    :cond_0
    return-object v0
.end method

.method public booleanObject(Z)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_0

    .line 269
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object p1
.end method

.method public coerceFromObject(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 830
    invoke-virtual {p0, p1}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object p1

    invoke-virtual {p1, p2}, Lgnu/bytecode/Type;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public coerceToObject(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 835
    invoke-virtual {p0, p1}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object p1

    invoke-virtual {p1, p2}, Lgnu/bytecode/Type;->coerceToObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public declFromField(Lgnu/expr/ModuleExp;Ljava/lang/Object;Lgnu/bytecode/Field;)Lgnu/expr/Declaration;
    .locals 9

    .line 721
    invoke-virtual {p3}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object v0

    .line 722
    invoke-virtual {p3}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v1

    .line 723
    sget-object v2, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    invoke-virtual {v1, v2}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v2

    .line 729
    invoke-virtual {p3}, Lgnu/bytecode/Field;->getModifiers()I

    move-result v3

    and-int/lit8 v3, v3, 0x10

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v6, "$instance"

    .line 730
    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    :goto_1
    const/4 p2, 0x0

    goto :goto_3

    :cond_1
    if-eqz v3, :cond_2

    .line 732
    instance-of v7, p2, Lgnu/mapping/Named;

    if-eqz v7, :cond_2

    .line 733
    check-cast p2, Lgnu/mapping/Named;

    invoke-interface {p2}, Lgnu/mapping/Named;->getSymbol()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string p2, "$Prvt$"

    .line 737
    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x6

    .line 740
    invoke-virtual {v0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 p2, 0x1

    goto :goto_2

    :cond_3
    const/4 p2, 0x0

    .line 742
    :goto_2
    invoke-static {v0, v5}, Lgnu/expr/Compilation;->demangleName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 744
    :goto_3
    instance-of v7, v0, Ljava/lang/String;

    if-eqz v7, :cond_5

    .line 746
    invoke-virtual {p1}, Lgnu/expr/ModuleExp;->getNamespaceUri()Ljava/lang/String;

    move-result-object v7

    .line 747
    check-cast v0, Ljava/lang/String;

    if-nez v7, :cond_4

    .line 750
    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    goto :goto_4

    .line 752
    :cond_4
    invoke-static {v7, v0}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    :cond_5
    :goto_4
    if-eqz v2, :cond_6

    .line 754
    sget-object v7, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    goto :goto_5

    :cond_6
    invoke-virtual {v1}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {p0, v7}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v7

    .line 756
    :goto_5
    invoke-virtual {p1, v0, v7}, Lgnu/expr/ModuleExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    move-result-object p1

    .line 757
    invoke-virtual {p3}, Lgnu/bytecode/Field;->getModifiers()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_6

    :cond_7
    const/4 v0, 0x0

    :goto_6
    if-eqz v2, :cond_8

    .line 760
    invoke-virtual {p1, v5}, Lgnu/expr/Declaration;->setIndirectBinding(Z)V

    .line 761
    instance-of v5, v1, Lgnu/bytecode/ClassType;

    if-eqz v5, :cond_a

    check-cast v1, Lgnu/bytecode/ClassType;

    const-string v5, "gnu.mapping.ThreadLocation"

    invoke-virtual {v1, v5}, Lgnu/bytecode/ClassType;->isSubclass(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-wide/32 v7, 0x10000000

    .line 763
    invoke-virtual {p1, v7, v8}, Lgnu/expr/Declaration;->setFlag(J)V

    goto :goto_7

    :cond_8
    if-eqz v3, :cond_a

    .line 765
    instance-of v7, v1, Lgnu/bytecode/ClassType;

    if-eqz v7, :cond_a

    .line 767
    sget-object v7, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    invoke-virtual {v1, v7}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 768
    invoke-virtual {p1, v5}, Lgnu/expr/Declaration;->setProcedureDecl(Z)V

    goto :goto_7

    .line 769
    :cond_9
    check-cast v1, Lgnu/bytecode/ClassType;

    const-string v5, "gnu.mapping.Namespace"

    invoke-virtual {v1, v5}, Lgnu/bytecode/ClassType;->isSubclass(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-wide/32 v7, 0x200000

    .line 770
    invoke-virtual {p1, v7, v8}, Lgnu/expr/Declaration;->setFlag(J)V

    :cond_a
    :goto_7
    if-eqz v0, :cond_b

    const-wide/16 v0, 0x800

    .line 773
    invoke-virtual {p1, v0, v1}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 774
    :cond_b
    iput-object p3, p1, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-eqz v3, :cond_c

    if-nez v2, :cond_c

    const-wide/16 v0, 0x4000

    .line 776
    invoke-virtual {p1, v0, v1}, Lgnu/expr/Declaration;->setFlag(J)V

    :cond_c
    if-eqz v6, :cond_d

    const-wide/32 v0, 0x40000000

    .line 778
    invoke-virtual {p1, v0, v1}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 779
    :cond_d
    invoke-virtual {p1, v4}, Lgnu/expr/Declaration;->setSimple(Z)V

    if-eqz p2, :cond_e

    const-wide/32 p2, 0x80020

    .line 781
    invoke-virtual {p1, p2, p3}, Lgnu/expr/Declaration;->setFlag(J)V

    :cond_e
    return-object p1
.end method

.method protected defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 326
    iget-object v0, p0, Lgnu/expr/Language;->environ:Lgnu/mapping/Environment;

    invoke-virtual {p0, p1}, Lgnu/expr/Language;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, p2, p3}, Lgnu/kawa/reflect/StaticFieldLocation;->define(Lgnu/mapping/Environment;Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    return-void
.end method

.method protected defProcStFld(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 352
    invoke-static {p1}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 337
    invoke-virtual {p0}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 339
    :goto_0
    invoke-virtual {p0, p1}, Lgnu/expr/Language;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p1

    .line 340
    iget-object v1, p0, Lgnu/expr/Language;->environ:Lgnu/mapping/Environment;

    invoke-static {v1, p1, v0, p2, p3}, Lgnu/kawa/reflect/StaticFieldLocation;->define(Lgnu/mapping/Environment;Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object p1

    .line 342
    invoke-virtual {p1}, Lgnu/kawa/reflect/StaticFieldLocation;->setProcedure()V

    return-void
.end method

.method public define(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 318
    invoke-virtual {p0, p1}, Lgnu/expr/Language;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p1

    .line 319
    iget-object v0, p0, Lgnu/expr/Language;->environ:Lgnu/mapping/Environment;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lgnu/mapping/Environment;->define(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final defineFunction(Lgnu/mapping/Named;)V
    .locals 3

    .line 358
    invoke-interface {p1}, Lgnu/mapping/Named;->getSymbol()Ljava/lang/Object;

    move-result-object v0

    .line 359
    instance-of v1, v0, Lgnu/mapping/Symbol;

    if-eqz v1, :cond_0

    check-cast v0, Lgnu/mapping/Symbol;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/expr/Language;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    .line 361
    :goto_0
    invoke-virtual {p0}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 363
    :goto_1
    iget-object v2, p0, Lgnu/expr/Language;->environ:Lgnu/mapping/Environment;

    invoke-virtual {v2, v0, v1, p1}, Lgnu/mapping/Environment;->define(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public defineFunction(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 371
    invoke-virtual {p0}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 373
    :goto_0
    iget-object v1, p0, Lgnu/expr/Language;->environ:Lgnu/mapping/Environment;

    invoke-virtual {p0, p1}, Lgnu/expr/Language;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p1

    invoke-virtual {v1, p1, v0, p2}, Lgnu/mapping/Environment;->define(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public emitCoerceToBoolean(Lgnu/bytecode/CodeAttr;)V
    .locals 2

    const/4 v0, 0x0

    .line 820
    invoke-virtual {p0, v0, p1}, Lgnu/expr/Language;->emitPushBoolean(ZLgnu/bytecode/CodeAttr;)V

    .line 821
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitIfNEq()V

    const/4 v1, 0x1

    .line 822
    invoke-virtual {p1, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 823
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitElse()V

    .line 824
    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 825
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitFi()V

    return-void
.end method

.method public emitPushBoolean(ZLgnu/bytecode/CodeAttr;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 811
    sget-object p1, Lgnu/expr/Compilation;->trueConstant:Lgnu/bytecode/Field;

    goto :goto_0

    :cond_0
    sget-object p1, Lgnu/expr/Compilation;->falseConstant:Lgnu/bytecode/Field;

    :goto_0
    invoke-virtual {p2, p1}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    return-void
.end method

.method public final eval(Lgnu/mapping/InPort;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 879
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 880
    invoke-virtual {v0}, Lgnu/mapping/CallContext;->startFromContext()I

    move-result v1

    .line 883
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lgnu/expr/Language;->eval(Lgnu/mapping/InPort;Lgnu/mapping/CallContext;)V

    .line 884
    invoke-virtual {v0, v1}, Lgnu/mapping/CallContext;->getFromContext(I)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 888
    invoke-virtual {v0, v1}, Lgnu/mapping/CallContext;->cleanupFromContext(I)V

    .line 889
    throw p1
.end method

.method public final eval(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 873
    instance-of v0, p1, Lgnu/mapping/InPort;

    if-eqz v0, :cond_0

    check-cast p1, Lgnu/mapping/InPort;

    goto :goto_0

    :cond_0
    new-instance v0, Lgnu/mapping/InPort;

    invoke-direct {v0, p1}, Lgnu/mapping/InPort;-><init>(Ljava/io/Reader;)V

    move-object p1, v0

    :goto_0
    invoke-virtual {p0, p1}, Lgnu/expr/Language;->eval(Lgnu/mapping/InPort;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final eval(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 865
    new-instance v0, Lgnu/mapping/CharArrayInPort;

    invoke-direct {v0, p1}, Lgnu/mapping/CharArrayInPort;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lgnu/expr/Language;->eval(Lgnu/mapping/InPort;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public eval(Lgnu/mapping/InPort;Lgnu/mapping/CallContext;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 938
    new-instance v0, Lgnu/text/SourceMessages;

    invoke-direct {v0}, Lgnu/text/SourceMessages;-><init>()V

    .line 939
    invoke-static {p0}, Lgnu/expr/Language;->setSaveCurrent(Lgnu/expr/Language;)Lgnu/expr/Language;

    move-result-object v1

    const/4 v2, 0x3

    .line 942
    :try_start_0
    invoke-virtual {p0, p1, v0, v2}, Lgnu/expr/Language;->parse(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;I)Lgnu/expr/Compilation;

    move-result-object p1

    .line 943
    invoke-virtual {p0}, Lgnu/expr/Language;->getEnvironment()Lgnu/mapping/Environment;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p2, p1, v3, v3}, Lgnu/expr/ModuleExp;->evalModule(Lgnu/mapping/Environment;Lgnu/mapping/CallContext;Lgnu/expr/Compilation;Ljava/net/URL;Lgnu/mapping/OutPort;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 947
    invoke-static {v1}, Lgnu/expr/Language;->restoreCurrent(Lgnu/expr/Language;)V

    .line 949
    invoke-virtual {v0}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 950
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid syntax in eval form:\n"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lgnu/text/SourceMessages;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 947
    invoke-static {v1}, Lgnu/expr/Language;->restoreCurrent(Lgnu/expr/Language;)V

    throw p1
.end method

.method public eval(Ljava/io/Reader;Lgnu/lists/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 922
    instance-of v0, p1, Lgnu/mapping/InPort;

    if-eqz v0, :cond_0

    check-cast p1, Lgnu/mapping/InPort;

    goto :goto_0

    :cond_0
    new-instance v0, Lgnu/mapping/InPort;

    invoke-direct {v0, p1}, Lgnu/mapping/InPort;-><init>(Ljava/io/Reader;)V

    move-object p1, v0

    .line 923
    :goto_0
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 924
    iget-object v1, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 927
    :try_start_0
    iput-object p2, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 928
    invoke-virtual {p0, p1, v0}, Lgnu/expr/Language;->eval(Lgnu/mapping/InPort;Lgnu/mapping/CallContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 932
    iput-object v1, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    return-void

    :catchall_0
    move-exception p1

    iput-object v1, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    throw p1
.end method

.method public final eval(Ljava/io/Reader;Ljava/io/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 916
    invoke-virtual {p0, p2}, Lgnu/expr/Language;->getOutputConsumer(Ljava/io/Writer;)Lgnu/lists/Consumer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lgnu/expr/Language;->eval(Ljava/io/Reader;Lgnu/lists/Consumer;)V

    return-void
.end method

.method public final eval(Ljava/lang/String;Lgnu/lists/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 910
    new-instance v0, Lgnu/mapping/CharArrayInPort;

    invoke-direct {v0, p1}, Lgnu/mapping/CharArrayInPort;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lgnu/expr/Language;->eval(Ljava/io/Reader;Lgnu/lists/Consumer;)V

    return-void
.end method

.method public final eval(Ljava/lang/String;Lgnu/lists/PrintConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 904
    invoke-virtual {p0, p2}, Lgnu/expr/Language;->getOutputConsumer(Ljava/io/Writer;)Lgnu/lists/Consumer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lgnu/expr/Language;->eval(Ljava/lang/String;Lgnu/lists/Consumer;)V

    return-void
.end method

.method public final eval(Ljava/lang/String;Ljava/io/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 896
    new-instance v0, Lgnu/mapping/CharArrayInPort;

    invoke-direct {v0, p1}, Lgnu/mapping/CharArrayInPort;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lgnu/expr/Language;->eval(Ljava/io/Reader;Ljava/io/Writer;)V

    return-void
.end method

.method public formatType(Lgnu/bytecode/Type;)Ljava/lang/String;
    .locals 0

    .line 567
    invoke-virtual {p1}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCompilation(Lgnu/text/Lexer;Lgnu/text/SourceMessages;Lgnu/expr/NameLookup;)Lgnu/expr/Compilation;
    .locals 0

    .line 454
    new-instance p1, Lgnu/expr/Compilation;

    invoke-direct {p1, p0, p2, p3}, Lgnu/expr/Compilation;-><init>(Lgnu/expr/Language;Lgnu/text/SourceMessages;Lgnu/expr/NameLookup;)V

    return-object p1
.end method

.method public getEnvPropertyFor(Lgnu/expr/Declaration;)Ljava/lang/Object;
    .locals 1

    .line 388
    invoke-virtual {p0}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lgnu/expr/Declaration;->isProcedureDecl()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 389
    sget-object p1, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getEnvPropertyFor(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 378
    invoke-virtual {p0}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 380
    :cond_0
    sget-object p2, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    invoke-virtual {p2}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 382
    sget-object p1, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    return-object p1

    :cond_1
    return-object v0
.end method

.method public final getEnvironment()Lgnu/mapping/Environment;
    .locals 1

    .line 298
    iget-object v0, p0, Lgnu/expr/Language;->userEnv:Lgnu/mapping/Environment;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getFormat(Z)Lgnu/lists/AbstractFormat;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getLangEnvironment()Lgnu/mapping/Environment;
    .locals 1

    .line 308
    iget-object v0, p0, Lgnu/expr/Language;->environ:Lgnu/mapping/Environment;

    return-object v0
.end method

.method public final getLangTypeFor(Lgnu/bytecode/Type;)Lgnu/bytecode/Type;
    .locals 1

    .line 556
    invoke-virtual {p1}, Lgnu/bytecode/Type;->isExisting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    invoke-virtual {p1}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 560
    invoke-virtual {p0, v0}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public abstract getLexer(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;)Lgnu/text/Lexer;
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 443
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    .line 444
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 446
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getNamespaceOf(Lgnu/expr/Declaration;)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final getNewEnvironment()Lgnu/mapping/Environment;
    .locals 2

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "environment-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lgnu/expr/Language;->envCounter:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lgnu/expr/Language;->envCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lgnu/expr/Language;->environ:Lgnu/mapping/Environment;

    invoke-static {v0, v1}, Lgnu/mapping/Environment;->make(Ljava/lang/String;Lgnu/mapping/Environment;)Lgnu/mapping/InheritingEnvironment;

    move-result-object v0

    return-object v0
.end method

.method public getOutputConsumer(Ljava/io/Writer;)Lgnu/lists/Consumer;
    .locals 1

    .line 435
    instance-of v0, p1, Lgnu/mapping/OutPort;

    if-eqz v0, :cond_0

    check-cast p1, Lgnu/mapping/OutPort;

    goto :goto_0

    :cond_0
    new-instance v0, Lgnu/mapping/OutPort;

    invoke-direct {v0, p1}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;)V

    move-object p1, v0

    :goto_0
    const/4 v0, 0x0

    .line 437
    invoke-virtual {p0, v0}, Lgnu/expr/Language;->getFormat(Z)Lgnu/lists/AbstractFormat;

    move-result-object v0

    iput-object v0, p1, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    return-object p1
.end method

.method public getPrompter()Lgnu/mapping/Procedure;
    .locals 4

    .line 852
    invoke-virtual {p0}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 853
    sget-object v0, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 854
    :goto_0
    invoke-virtual {p0}, Lgnu/expr/Language;->getEnvironment()Lgnu/mapping/Environment;

    move-result-object v2

    const-string v3, "default-prompter"

    invoke-virtual {p0, v3}, Lgnu/expr/Language;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/Procedure;

    if-eqz v0, :cond_1

    return-object v0

    .line 859
    :cond_1
    new-instance v0, Lgnu/expr/SimplePrompter;

    invoke-direct {v0}, Lgnu/expr/SimplePrompter;-><init>()V

    return-object v0
.end method

.method public getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;
    .locals 1

    .line 420
    iget-object v0, p0, Lgnu/expr/Language;->environ:Lgnu/mapping/Environment;

    invoke-virtual {v0, p1}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p1

    return-object p1
.end method

.method public final getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 1

    const/4 v0, 0x1

    .line 622
    invoke-virtual {p0, p1, v0}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;Z)Lgnu/bytecode/Type;

    move-result-object p1

    return-object p1
.end method

.method public getTypeFor(Lgnu/expr/Expression;Z)Lgnu/bytecode/Type;
    .locals 7

    .line 627
    instance-of v0, p1, Lgnu/expr/QuoteExp;

    if-eqz v0, :cond_2

    .line 629
    check-cast p1, Lgnu/expr/QuoteExp;

    invoke-virtual {p1}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 630
    instance-of v0, p1, Lgnu/bytecode/Type;

    if-eqz v0, :cond_0

    .line 631
    check-cast p1, Lgnu/bytecode/Type;

    return-object p1

    .line 632
    :cond_0
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 633
    check-cast p1, Ljava/lang/Class;

    invoke-static {p1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object p1

    return-object p1

    .line 634
    :cond_1
    invoke-virtual {p0, p1, p2}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Object;Z)Lgnu/bytecode/Type;

    move-result-object p1

    return-object p1

    .line 636
    :cond_2
    instance-of v0, p1, Lgnu/expr/ReferenceExp;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 638
    check-cast p1, Lgnu/expr/ReferenceExp;

    .line 639
    invoke-virtual {p1}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v0

    invoke-static {v0}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v0

    .line 640
    invoke-virtual {p1}, Lgnu/expr/ReferenceExp;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    if-eqz v0, :cond_9

    .line 643
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v3

    .line 644
    instance-of v4, v3, Lgnu/expr/QuoteExp;

    if-eqz v4, :cond_3

    const-wide/16 v5, 0x4000

    invoke-virtual {v0, v5, v6}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v5

    if-nez v5, :cond_3

    .line 648
    check-cast v3, Lgnu/expr/QuoteExp;

    invoke-virtual {v3}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 649
    invoke-virtual {p0, p1, p2}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Object;Z)Lgnu/bytecode/Type;

    move-result-object p1

    return-object p1

    .line 651
    :cond_3
    instance-of v5, v3, Lgnu/expr/ClassExp;

    if-nez v5, :cond_8

    instance-of v5, v3, Lgnu/expr/ModuleExp;

    if-eqz v5, :cond_4

    goto :goto_0

    .line 656
    :cond_4
    invoke-virtual {v0}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v5

    if-eqz v5, :cond_7

    if-eqz v4, :cond_7

    .line 659
    check-cast v3, Lgnu/expr/QuoteExp;

    invoke-virtual {v3}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 660
    instance-of v3, v0, Lgnu/mapping/Location;

    if-eqz v3, :cond_9

    .line 662
    check-cast v0, Lgnu/mapping/Location;

    .line 663
    invoke-virtual {v0}, Lgnu/mapping/Location;->isBound()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 664
    invoke-virtual {v0}, Lgnu/mapping/Location;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Object;Z)Lgnu/bytecode/Type;

    move-result-object p1

    return-object p1

    .line 665
    :cond_5
    instance-of p1, v0, Lgnu/mapping/Named;

    if-nez p1, :cond_6

    return-object v1

    .line 667
    :cond_6
    check-cast v0, Lgnu/mapping/Named;

    invoke-interface {v0}, Lgnu/mapping/Named;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_7
    const-wide/32 v4, 0x10000

    .line 670
    invoke-virtual {v0, v4, v5}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v0

    if-nez v0, :cond_9

    .line 671
    invoke-virtual {p0, v3, p2}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;Z)Lgnu/bytecode/Type;

    move-result-object p1

    return-object p1

    .line 653
    :cond_8
    :goto_0
    invoke-virtual {v0, v2}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 654
    check-cast v3, Lgnu/expr/LambdaExp;

    invoke-virtual {v3}, Lgnu/expr/LambdaExp;->getClassType()Lgnu/bytecode/ClassType;

    move-result-object p1

    return-object p1

    .line 673
    :cond_9
    :goto_1
    invoke-virtual {p0}, Lgnu/expr/Language;->getEnvironment()Lgnu/mapping/Environment;

    move-result-object p2

    invoke-virtual {p2, p1}, Lgnu/mapping/Environment;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 674
    instance-of v0, p2, Lgnu/bytecode/Type;

    if-eqz v0, :cond_a

    .line 675
    check-cast p2, Lgnu/bytecode/Type;

    return-object p2

    .line 676
    :cond_a
    instance-of v0, p2, Lgnu/kawa/lispexpr/ClassNamespace;

    if-eqz v0, :cond_b

    .line 677
    check-cast p2, Lgnu/kawa/lispexpr/ClassNamespace;

    invoke-virtual {p2}, Lgnu/kawa/lispexpr/ClassNamespace;->getClassType()Lgnu/bytecode/ClassType;

    move-result-object p1

    return-object p1

    .line 678
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v0, 0x2

    if-le p2, v0, :cond_d

    const/4 v0, 0x0

    .line 679
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x3c

    if-ne v0, v3, :cond_d

    sub-int/2addr p2, v2

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x3e

    if-ne v0, v3, :cond_d

    .line 681
    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object p1

    return-object p1

    .line 683
    :cond_c
    instance-of p2, p1, Lgnu/expr/ClassExp;

    if-nez p2, :cond_e

    instance-of p2, p1, Lgnu/expr/ModuleExp;

    if-eqz p2, :cond_d

    goto :goto_2

    :cond_d
    return-object v1

    .line 685
    :cond_e
    :goto_2
    check-cast p1, Lgnu/expr/LambdaExp;

    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->getClassType()Lgnu/bytecode/ClassType;

    move-result-object p1

    return-object p1
.end method

.method public getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;
    .locals 0

    .line 551
    invoke-static {p1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object p1

    return-object p1
.end method

.method public final getTypeFor(Ljava/lang/Object;Z)Lgnu/bytecode/Type;
    .locals 1

    .line 594
    instance-of v0, p1, Lgnu/bytecode/Type;

    if-eqz v0, :cond_0

    .line 595
    check-cast p1, Lgnu/bytecode/Type;

    return-object p1

    .line 596
    :cond_0
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 597
    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object p1

    return-object p1

    :cond_1
    if-eqz p2, :cond_4

    .line 598
    instance-of p2, p1, Lgnu/lists/FString;

    if-nez p2, :cond_3

    instance-of p2, p1, Ljava/lang/String;

    if-nez p2, :cond_3

    instance-of p2, p1, Lgnu/mapping/Symbol;

    if-eqz p2, :cond_2

    move-object p2, p1

    check-cast p2, Lgnu/mapping/Symbol;

    invoke-virtual {p2}, Lgnu/mapping/Symbol;->hasEmptyNamespace()Z

    move-result p2

    if-nez p2, :cond_3

    :cond_2
    instance-of p2, p1, Lgnu/lists/CharSeq;

    if-eqz p2, :cond_4

    .line 603
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object p1

    return-object p1

    .line 604
    :cond_4
    instance-of p2, p1, Lgnu/mapping/Namespace;

    if-eqz p2, :cond_5

    .line 606
    check-cast p1, Lgnu/mapping/Namespace;

    invoke-virtual {p1}, Lgnu/mapping/Namespace;->getName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string p2, "class:"

    .line 607
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 p2, 0x6

    .line 608
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lgnu/expr/Language;->string2Type(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/expr/Language;->getLangTypeFor(Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object p1

    return-object p1

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTypeFor(Ljava/lang/String;)Lgnu/bytecode/Type;
    .locals 0

    .line 589
    invoke-static {p1}, Lgnu/expr/Language;->string2Type(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object p1

    return-object p1
.end method

.method public hasNamespace(Lgnu/expr/Declaration;I)Z
    .locals 0

    .line 806
    invoke-virtual {p0, p1}, Lgnu/expr/Language;->getNamespaceOf(Lgnu/expr/Declaration;)I

    move-result p1

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasSeparateFunctionNamespace()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTrue(Ljava/lang/Object;)Z
    .locals 1

    .line 264
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public loadClass(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 399
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 407
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 408
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lgnu/kawa/reflect/ClassMemberLocation;->defineAll(Ljava/lang/Object;Lgnu/expr/Language;Lgnu/mapping/Environment;)V

    .line 409
    instance-of v1, v0, Lgnu/expr/ModuleBody;

    if-eqz v1, :cond_0

    .line 410
    check-cast v0, Lgnu/expr/ModuleBody;

    invoke-virtual {v0}, Lgnu/expr/ModuleBody;->run()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 414
    new-instance v1, Lgnu/mapping/WrappedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception p1

    .line 403
    throw p1
.end method

.method public lookup(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 425
    iget-object v0, p0, Lgnu/expr/Language;->environ:Lgnu/mapping/Environment;

    invoke-virtual {v0, p1}, Lgnu/mapping/Environment;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public lookupBuiltin(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;
    .locals 1

    .line 312
    iget-object v0, p0, Lgnu/expr/Language;->environ:Lgnu/mapping/Environment;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lgnu/mapping/Environment;->lookup(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public noValue()Ljava/lang/Object;
    .locals 1

    .line 275
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object v0
.end method

.method public final parse(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;I)Lgnu/expr/Compilation;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 491
    invoke-virtual {p0, p1, p2}, Lgnu/expr/Language;->getLexer(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;)Lgnu/text/Lexer;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p3, p2}, Lgnu/expr/Language;->parse(Lgnu/text/Lexer;ILgnu/expr/ModuleInfo;)Lgnu/expr/Compilation;

    move-result-object p1

    return-object p1
.end method

.method public final parse(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;ILgnu/expr/ModuleInfo;)Lgnu/expr/Compilation;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 507
    invoke-virtual {p0, p1, p2}, Lgnu/expr/Language;->getLexer(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;)Lgnu/text/Lexer;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4}, Lgnu/expr/Language;->parse(Lgnu/text/Lexer;ILgnu/expr/ModuleInfo;)Lgnu/expr/Compilation;

    move-result-object p1

    return-object p1
.end method

.method public final parse(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;Lgnu/expr/ModuleInfo;)Lgnu/expr/Compilation;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 499
    invoke-virtual {p0, p1, p2}, Lgnu/expr/Language;->getLexer(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;)Lgnu/text/Lexer;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p0, p1, p2, p3}, Lgnu/expr/Language;->parse(Lgnu/text/Lexer;ILgnu/expr/ModuleInfo;)Lgnu/expr/Compilation;

    move-result-object p1

    return-object p1
.end method

.method public final parse(Lgnu/text/Lexer;ILgnu/expr/ModuleInfo;)Lgnu/expr/Compilation;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 513
    invoke-virtual {p1}, Lgnu/text/Lexer;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v0

    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_0

    .line 514
    invoke-virtual {p0}, Lgnu/expr/Language;->getEnvironment()Lgnu/mapping/Environment;

    move-result-object v1

    invoke-static {v1, p0}, Lgnu/expr/NameLookup;->getInstance(Lgnu/mapping/Environment;Lgnu/expr/Language;)Lgnu/expr/NameLookup;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Lgnu/expr/NameLookup;

    invoke-direct {v1, p0}, Lgnu/expr/NameLookup;-><init>(Lgnu/expr/Language;)V

    :goto_0
    and-int/lit8 v2, p2, 0x1

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 518
    :goto_1
    invoke-virtual {p0, p1, v0, v1}, Lgnu/expr/Language;->getCompilation(Lgnu/text/Lexer;Lgnu/text/SourceMessages;Lgnu/expr/NameLookup;)Lgnu/expr/Compilation;

    move-result-object v0

    .line 519
    sget-boolean v1, Lgnu/expr/Language;->requirePedantic:Z

    if-eqz v1, :cond_2

    .line 520
    iput-boolean v3, v0, Lgnu/expr/Compilation;->pedantic:Z

    :cond_2
    if-nez v2, :cond_3

    .line 522
    iput-boolean v3, v0, Lgnu/expr/Compilation;->mustCompile:Z

    .line 523
    :cond_3
    iput-boolean v2, v0, Lgnu/expr/Compilation;->immediate:Z

    .line 524
    iput p2, v0, Lgnu/expr/Compilation;->langOptions:I

    and-int/lit8 v1, p2, 0x40

    if-eqz v1, :cond_4

    .line 526
    iput-boolean v3, v0, Lgnu/expr/Compilation;->explicit:Z

    :cond_4
    and-int/lit8 v1, p2, 0x8

    if-eqz v1, :cond_5

    .line 528
    invoke-virtual {v0, v3}, Lgnu/expr/Compilation;->setState(I)V

    .line 529
    :cond_5
    invoke-virtual {v0, p1}, Lgnu/expr/Compilation;->pushNewModule(Lgnu/text/Lexer;)Lgnu/expr/ModuleExp;

    if-eqz p3, :cond_6

    .line 531
    invoke-virtual {p3, v0}, Lgnu/expr/ModuleInfo;->setCompilation(Lgnu/expr/Compilation;)V

    .line 532
    :cond_6
    invoke-virtual {p0, v0, p2}, Lgnu/expr/Language;->parse(Lgnu/expr/Compilation;I)Z

    move-result p1

    if-nez p1, :cond_7

    const/4 p1, 0x0

    return-object p1

    .line 534
    :cond_7
    invoke-virtual {v0}, Lgnu/expr/Compilation;->getState()I

    move-result p1

    if-ne p1, v3, :cond_8

    const/4 p1, 0x2

    .line 535
    invoke-virtual {v0, p1}, Lgnu/expr/Compilation;->setState(I)V

    :cond_8
    return-object v0
.end method

.method public abstract parse(Lgnu/expr/Compilation;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation
.end method

.method public resolve(Lgnu/expr/Compilation;)V
    .locals 0

    return-void
.end method

.method public runAsApplication([Ljava/lang/String;)V
    .locals 0

    .line 958
    invoke-static {p0}, Lgnu/expr/Language;->setDefaults(Lgnu/expr/Language;)V

    .line 959
    invoke-static {p1}, Lkawa/repl;->main([Ljava/lang/String;)V

    return-void
.end method
