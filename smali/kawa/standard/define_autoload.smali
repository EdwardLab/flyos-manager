.class public Lkawa/standard/define_autoload;
.super Lkawa/lang/Syntax;
.source "define_autoload.java"


# static fields
.field public static final define_autoload:Lkawa/standard/define_autoload;

.field public static final define_autoloads_from_file:Lkawa/standard/define_autoload;


# instance fields
.field fromFile:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Lkawa/standard/define_autoload;

    const-string v1, "define-autoload"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkawa/standard/define_autoload;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lkawa/standard/define_autoload;->define_autoload:Lkawa/standard/define_autoload;

    .line 16
    new-instance v0, Lkawa/standard/define_autoload;

    const-string v1, "define-autoloads-from-file"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkawa/standard/define_autoload;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lkawa/standard/define_autoload;->define_autoloads_from_file:Lkawa/standard/define_autoload;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lkawa/lang/Syntax;-><init>(Ljava/lang/Object;)V

    .line 24
    iput-boolean p2, p0, Lkawa/standard/define_autoload;->fromFile:Z

    return-void
.end method

.method public static findAutoloadComments(Lgnu/kawa/lispexpr/LispReader;Ljava/lang/String;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    const/4 v2, 0x1

    .line 149
    :goto_1
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->peek()I

    move-result v3

    if-gez v3, :cond_1

    return-void

    :cond_1
    const/16 v4, 0xa

    if-eq v3, v4, :cond_f

    const/16 v5, 0xd

    if-ne v3, v5, :cond_2

    goto/16 :goto_6

    :cond_2
    if-eqz v2, :cond_b

    const/16 v2, 0x3b

    if-ne v3, v2, :cond_b

    const/4 v2, 0x0

    :cond_3
    :goto_2
    const/16 v6, 0xe

    if-ne v2, v6, :cond_7

    if-lez v2, :cond_b

    .line 179
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 180
    instance-of v3, v2, Lgnu/lists/Pair;

    if-eqz v3, :cond_e

    .line 182
    check-cast v2, Lgnu/lists/Pair;

    .line 185
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    .line 186
    instance-of v4, v3, Ljava/lang/String;

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_4
    instance-of v4, v3, Lgnu/mapping/Symbol;

    if-eqz v4, :cond_5

    check-cast v3, Lgnu/mapping/Symbol;

    invoke-virtual {v3}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_5
    move-object v3, v5

    :goto_3
    const/16 v4, 0x77

    const-string v6, "defun"

    if-ne v3, v6, :cond_6

    .line 192
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/lists/Pair;

    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 193
    new-instance v2, Lkawa/lang/AutoloadProcedure;

    invoke-virtual {p3}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v3

    invoke-direct {v2, v5, p1, v3}, Lkawa/lang/AutoloadProcedure;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/expr/Language;)V

    move-object v8, v5

    move-object v5, v2

    move-object v2, v8

    goto :goto_4

    .line 197
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unsupported ;;;###autoload followed by: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v4, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    move-object v2, v5

    :goto_4
    if-eqz v5, :cond_e

    .line 201
    invoke-virtual {p2, v2, v4, p3}, Lgnu/expr/ScopeExp;->getDefine(Ljava/lang/Object;CLgnu/expr/Compilation;)Lgnu/expr/Declaration;

    move-result-object v2

    .line 202
    new-instance v3, Lgnu/expr/QuoteExp;

    invoke-direct {v3, v5}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    const-wide/16 v4, 0x4000

    .line 203
    invoke-virtual {v2, v4, v5}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 204
    invoke-virtual {v2, v3}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 205
    invoke-virtual {v2, v1}, Lgnu/expr/Declaration;->setProcedureDecl(Z)V

    .line 206
    sget-object v3, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    invoke-virtual {v2, v3}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    goto :goto_5

    .line 165
    :cond_7
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v3

    if-gez v3, :cond_8

    return-void

    :cond_8
    if-eq v3, v4, :cond_0

    if-ne v3, v5, :cond_9

    goto/16 :goto_0

    :cond_9
    if-ltz v2, :cond_3

    add-int/lit8 v6, v2, 0x1

    const-string v7, ";;;###autoload"

    .line 173
    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v3, v2, :cond_a

    move v2, v6

    goto/16 :goto_2

    :cond_a
    const/4 v2, -0x1

    goto/16 :goto_2

    .line 214
    :cond_b
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->skip()V

    const/16 v2, 0x23

    if-ne v3, v2, :cond_c

    .line 217
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->peek()I

    move-result v4

    const/16 v5, 0x7c

    if-ne v4, v5, :cond_c

    .line 219
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->skip()V

    .line 220
    invoke-virtual {p0, v2, v5}, Lgnu/kawa/lispexpr/LispReader;->readNestedComment(CC)V

    goto :goto_5

    :cond_c
    int-to-char v2, v3

    .line 224
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_5

    .line 228
    :cond_d
    invoke-virtual {p0, v3}, Lgnu/kawa/lispexpr/LispReader;->readObject(I)Ljava/lang/Object;

    move-result-object v2

    .line 229
    sget-object v3, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    if-ne v2, v3, :cond_e

    return-void

    :cond_e
    :goto_5
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 154
    :cond_f
    :goto_6
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    goto/16 :goto_0
.end method

.method public static process(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z
    .locals 4

    .line 239
    instance-of v0, p0, Lgnu/lists/Pair;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 241
    check-cast p0, Lgnu/lists/Pair;

    .line 242
    invoke-virtual {p0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lkawa/standard/define_autoload;->process(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p1, p2, p3, p4}, Lkawa/standard/define_autoload;->process(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 245
    :cond_1
    sget-object p2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne p0, p2, :cond_2

    return v2

    .line 270
    :cond_2
    instance-of p2, p0, Ljava/lang/String;

    if-nez p2, :cond_4

    instance-of p2, p0, Lgnu/mapping/Symbol;

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    return v1

    .line 272
    :cond_4
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p2, 0x77

    .line 273
    invoke-virtual {p3, p0, p2, p4}, Lgnu/expr/ScopeExp;->getDefine(Ljava/lang/Object;CLgnu/expr/Compilation;)Lgnu/expr/Declaration;

    move-result-object p2

    .line 274
    instance-of p3, p1, Ljava/lang/String;

    if-eqz p3, :cond_5

    move-object p3, p1

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x2

    if-le v0, v3, :cond_5

    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x3c

    if-ne v1, v3, :cond_5

    sub-int/2addr v0, v2

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x3e

    if-ne v1, v3, :cond_5

    .line 277
    invoke-virtual {p3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 278
    :cond_5
    new-instance p3, Lkawa/lang/AutoloadProcedure;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object p4

    invoke-direct {p3, p0, p1, p4}, Lkawa/lang/AutoloadProcedure;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/expr/Language;)V

    .line 280
    new-instance p0, Lgnu/expr/QuoteExp;

    invoke-direct {p0, p3}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    const-wide/16 p3, 0x4000

    .line 281
    invoke-virtual {p2, p3, p4}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 282
    invoke-virtual {p2, p0}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    return v2
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public scanFile(Ljava/lang/String;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z
    .locals 8

    const-string v0, ".el"

    .line 70
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 72
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0}, Ljava/io/File;->isAbsolute()Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p3}, Lkawa/lang/Translator;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, 0x1

    if-ltz v2, :cond_4

    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-static {v2}, Lgnu/expr/Language;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v4

    if-nez v4, :cond_1

    .line 84
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "unknown extension for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    return v3

    .line 106
    :cond_1
    iget-object v5, p3, Lkawa/lang/Translator;->classPrefix:Ljava/lang/String;

    .line 107
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 108
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v2

    const/4 v2, 0x0

    .line 109
    invoke-virtual {p1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :goto_0
    const-string v7, "../"

    .line 110
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 112
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v5, v1, v7}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v7

    if-gez v7, :cond_2

    .line 115
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cannot use relative filename \""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" with simple prefix \""

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    return v2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 119
    invoke-virtual {v5, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x3

    .line 120
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 122
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x2f

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 126
    :try_start_0
    invoke-static {v0}, Lgnu/mapping/InPort;->openFile(Ljava/lang/Object;)Lgnu/mapping/InPort;

    move-result-object v1

    .line 127
    invoke-virtual {p3}, Lkawa/lang/Translator;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lgnu/expr/Language;->getLexer(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;)Lgnu/text/Lexer;

    move-result-object v1

    .line 128
    check-cast v1, Lgnu/kawa/lispexpr/LispReader;

    invoke-static {v1, p1, p2, p3}, Lkawa/standard/define_autoload;->findAutoloadComments(Lgnu/kawa/lispexpr/LispReader;Ljava/lang/String;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 132
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error reading "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    :cond_4
    :goto_1
    return v3
.end method

.method public scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z
    .locals 3

    .line 30
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lgnu/lists/Pair;

    if-nez v0, :cond_0

    .line 31
    invoke-super {p0, p1, p2, p3, p4}, Lkawa/lang/Syntax;->scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z

    move-result p1

    return p1

    .line 32
    :cond_0
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/lists/Pair;

    .line 33
    iget-boolean v0, p0, Lkawa/standard/define_autoload;->fromFile:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 38
    :goto_0
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Ljava/lang/CharSequence;

    if-nez p2, :cond_1

    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p3, p4}, Lkawa/standard/define_autoload;->scanFile(Ljava/lang/String;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z

    move-result p2

    if-nez p2, :cond_2

    return v1

    .line 46
    :cond_2
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p2

    .line 47
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne p2, v0, :cond_3

    const/4 p1, 0x1

    return p1

    .line 49
    :cond_3
    instance-of p2, p2, Lgnu/lists/Pair;

    if-nez p2, :cond_4

    :goto_1
    const-string p1, "invalid syntax for define-autoloads-from-file"

    .line 53
    invoke-virtual {p4, p1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    return v1

    .line 51
    :cond_4
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/lists/Pair;

    goto :goto_0

    .line 56
    :cond_5
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    .line 58
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lgnu/lists/Pair;

    if-eqz v2, :cond_6

    .line 60
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/lists/Pair;

    .line 61
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object p1

    .line 62
    invoke-static {v0, p1, p2, p3, p4}, Lkawa/standard/define_autoload;->process(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z

    move-result p1

    return p1

    :cond_6
    const-string p1, "invalid syntax for define-autoload"

    .line 64
    invoke-virtual {p4, p1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    return v1
.end method
