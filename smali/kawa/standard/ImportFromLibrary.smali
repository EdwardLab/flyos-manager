.class public Lkawa/standard/ImportFromLibrary;
.super Lkawa/lang/Syntax;
.source "ImportFromLibrary.java"


# static fields
.field private static final BUILTIN:Ljava/lang/String; = ""

.field private static final MISSING:Ljava/lang/String;

.field static final SRFI97Map:[[Ljava/lang/String;

.field public static final instance:Lkawa/standard/ImportFromLibrary;


# instance fields
.field public classPrefixPath:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 18
    new-instance v0, Lkawa/standard/ImportFromLibrary;

    invoke-direct {v0}, Lkawa/standard/ImportFromLibrary;-><init>()V

    sput-object v0, Lkawa/standard/ImportFromLibrary;->instance:Lkawa/standard/ImportFromLibrary;

    const/4 v0, 0x0

    .line 23
    sput-object v0, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    const/16 v1, 0x30

    new-array v1, v1, [[Ljava/lang/String;

    const-string v2, "1"

    const-string v3, "lists"

    const-string v4, "gnu.kawa.slib.srfi1"

    .line 25
    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "2"

    const-string v4, "and-let*"

    const-string v5, "gnu.kawa.slib.srfi2"

    filled-new-array {v2, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x3

    new-array v5, v2, [Ljava/lang/String;

    const-string v6, "5"

    aput-object v6, v5, v3

    const-string v6, "let"

    aput-object v6, v5, v4

    const/4 v7, 0x2

    aput-object v0, v5, v7

    aput-object v5, v1, v7

    const-string v5, "6"

    const-string v8, "basic-string-ports"

    const-string v9, ""

    filled-new-array {v5, v8, v9}, [Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    const-string v5, "8"

    const-string v8, "receive"

    filled-new-array {v5, v8, v9}, [Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x4

    aput-object v5, v1, v8

    const-string v5, "9"

    const-string v8, "records"

    filled-new-array {v5, v8, v9}, [Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x5

    aput-object v5, v1, v10

    const-string v5, "11"

    const-string v10, "let-values"

    filled-new-array {v5, v10, v9}, [Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x6

    aput-object v5, v1, v10

    const-string v5, "13"

    const-string v10, "strings"

    const-string v11, "gnu.kawa.slib.srfi13"

    filled-new-array {v5, v10, v11}, [Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x7

    aput-object v5, v1, v10

    new-array v5, v2, [Ljava/lang/String;

    const-string v10, "14"

    aput-object v10, v5, v3

    const-string v10, "char-sets"

    aput-object v10, v5, v4

    aput-object v0, v5, v7

    const/16 v10, 0x8

    aput-object v5, v1, v10

    const-string v5, "16"

    const-string v10, "case-lambda"

    filled-new-array {v5, v10, v9}, [Ljava/lang/String;

    move-result-object v5

    const/16 v10, 0x9

    aput-object v5, v1, v10

    const-string v5, "17"

    const-string v10, "generalized-set!"

    filled-new-array {v5, v10, v9}, [Ljava/lang/String;

    move-result-object v5

    const/16 v10, 0xa

    aput-object v5, v1, v10

    new-array v5, v2, [Ljava/lang/String;

    const-string v10, "18"

    aput-object v10, v5, v3

    const-string v10, "multithreading"

    aput-object v10, v5, v4

    aput-object v0, v5, v7

    const/16 v10, 0xb

    aput-object v5, v1, v10

    new-array v5, v2, [Ljava/lang/String;

    const-string v10, "19"

    aput-object v10, v5, v3

    const-string v10, "time"

    aput-object v10, v5, v4

    aput-object v0, v5, v7

    const/16 v10, 0xc

    aput-object v5, v1, v10

    new-array v5, v2, [Ljava/lang/String;

    const-string v10, "21"

    aput-object v10, v5, v3

    const-string v10, "real-time-multithreading"

    aput-object v10, v5, v4

    aput-object v0, v5, v7

    const/16 v10, 0xd

    aput-object v5, v1, v10

    const-string v5, "23"

    const-string v10, "error"

    filled-new-array {v5, v10, v9}, [Ljava/lang/String;

    move-result-object v5

    const/16 v10, 0xe

    aput-object v5, v1, v10

    const-string v5, "25"

    const-string v10, "multi-dimensional-arrays"

    filled-new-array {v5, v10, v9}, [Ljava/lang/String;

    move-result-object v5

    const/16 v10, 0xf

    aput-object v5, v1, v10

    const-string v5, "26"

    const-string v10, "cut"

    filled-new-array {v5, v10, v9}, [Ljava/lang/String;

    move-result-object v5

    const/16 v10, 0x10

    aput-object v5, v1, v10

    new-array v5, v2, [Ljava/lang/String;

    const-string v10, "27"

    aput-object v10, v5, v3

    const-string v10, "random-bits"

    aput-object v10, v5, v4

    aput-object v0, v5, v7

    const/16 v10, 0x11

    aput-object v5, v1, v10

    const-string v5, "28"

    const-string v10, "basic-format-strings"

    filled-new-array {v5, v10, v9}, [Ljava/lang/String;

    move-result-object v5

    const/16 v10, 0x12

    aput-object v5, v1, v10

    new-array v5, v2, [Ljava/lang/String;

    const-string v10, "29"

    aput-object v10, v5, v3

    const-string v10, "localization"

    aput-object v10, v5, v4

    aput-object v0, v5, v7

    const/16 v10, 0x13

    aput-object v5, v1, v10

    new-array v5, v2, [Ljava/lang/String;

    const-string v10, "31"

    aput-object v10, v5, v3

    const-string v10, "rec"

    aput-object v10, v5, v4

    aput-object v0, v5, v7

    const/16 v10, 0x14

    aput-object v5, v1, v10

    new-array v5, v2, [Ljava/lang/String;

    const-string v10, "38"

    aput-object v10, v5, v3

    const-string v10, "with-shared-structure"

    aput-object v10, v5, v4

    aput-object v0, v5, v7

    const/16 v10, 0x15

    aput-object v5, v1, v10

    const-string v5, "39"

    const-string v10, "parameters"

    filled-new-array {v5, v10, v9}, [Ljava/lang/String;

    move-result-object v5

    const/16 v9, 0x16

    aput-object v5, v1, v9

    new-array v5, v2, [Ljava/lang/String;

    const-string v9, "41"

    aput-object v9, v5, v3

    const-string v9, "streams"

    aput-object v9, v5, v4

    aput-object v0, v5, v7

    const/16 v9, 0x17

    aput-object v5, v1, v9

    new-array v5, v2, [Ljava/lang/String;

    const-string v9, "42"

    aput-object v9, v5, v3

    const-string v9, "eager-comprehensions"

    aput-object v9, v5, v4

    aput-object v0, v5, v7

    const/16 v9, 0x18

    aput-object v5, v1, v9

    new-array v5, v2, [Ljava/lang/String;

    const-string v9, "43"

    aput-object v9, v5, v3

    const-string v9, "vectors"

    aput-object v9, v5, v4

    aput-object v0, v5, v7

    const/16 v9, 0x19

    aput-object v5, v1, v9

    new-array v5, v2, [Ljava/lang/String;

    const-string v9, "44"

    aput-object v9, v5, v3

    const-string v9, "collections"

    aput-object v9, v5, v4

    aput-object v0, v5, v7

    const/16 v9, 0x1a

    aput-object v5, v1, v9

    new-array v5, v2, [Ljava/lang/String;

    const-string v9, "45"

    aput-object v9, v5, v3

    const-string v9, "lazy"

    aput-object v9, v5, v4

    aput-object v0, v5, v7

    const/16 v9, 0x1b

    aput-object v5, v1, v9

    new-array v5, v2, [Ljava/lang/String;

    const-string v9, "46"

    aput-object v9, v5, v3

    const-string v9, "syntax-rules"

    aput-object v9, v5, v4

    aput-object v0, v5, v7

    const/16 v9, 0x1c

    aput-object v5, v1, v9

    new-array v5, v2, [Ljava/lang/String;

    const-string v9, "47"

    aput-object v9, v5, v3

    const-string v9, "arrays"

    aput-object v9, v5, v4

    aput-object v0, v5, v7

    const/16 v10, 0x1d

    aput-object v5, v1, v10

    new-array v5, v2, [Ljava/lang/String;

    const-string v10, "48"

    aput-object v10, v5, v3

    const-string v10, "intermediate-format-strings"

    aput-object v10, v5, v4

    aput-object v0, v5, v7

    const/16 v10, 0x1e

    aput-object v5, v1, v10

    new-array v5, v2, [Ljava/lang/String;

    const-string v10, "51"

    aput-object v10, v5, v3

    const-string v10, "rest-values"

    aput-object v10, v5, v4

    aput-object v0, v5, v7

    const/16 v10, 0x1f

    aput-object v5, v1, v10

    new-array v5, v2, [Ljava/lang/String;

    const-string v10, "54"

    aput-object v10, v5, v3

    const-string v10, "cat"

    aput-object v10, v5, v4

    aput-object v0, v5, v7

    const/16 v10, 0x20

    aput-object v5, v1, v10

    new-array v5, v2, [Ljava/lang/String;

    const-string v10, "57"

    aput-object v10, v5, v3

    aput-object v8, v5, v4

    aput-object v0, v5, v7

    const/16 v8, 0x21

    aput-object v5, v1, v8

    new-array v5, v2, [Ljava/lang/String;

    const-string v8, "59"

    aput-object v8, v5, v3

    const-string v8, "vicinities"

    aput-object v8, v5, v4

    aput-object v0, v5, v7

    const/16 v8, 0x22

    aput-object v5, v1, v8

    new-array v5, v2, [Ljava/lang/String;

    const-string v8, "60"

    aput-object v8, v5, v3

    const-string v8, "integer-bits"

    aput-object v8, v5, v4

    aput-object v0, v5, v7

    const/16 v8, 0x23

    aput-object v5, v1, v8

    new-array v5, v2, [Ljava/lang/String;

    const-string v8, "61"

    aput-object v8, v5, v3

    const-string v8, "cond"

    aput-object v8, v5, v4

    aput-object v0, v5, v7

    const/16 v8, 0x24

    aput-object v5, v1, v8

    new-array v5, v2, [Ljava/lang/String;

    const-string v8, "63"

    aput-object v8, v5, v3

    aput-object v9, v5, v4

    aput-object v0, v5, v7

    const/16 v8, 0x25

    aput-object v5, v1, v8

    const-string v5, "64"

    const-string v8, "testing"

    const-string v9, "gnu.kawa.slib.testing"

    filled-new-array {v5, v8, v9}, [Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0x26

    aput-object v5, v1, v8

    new-array v5, v2, [Ljava/lang/String;

    const-string v8, "66"

    aput-object v8, v5, v3

    const-string v8, "octet-vectors"

    aput-object v8, v5, v4

    aput-object v0, v5, v7

    const/16 v8, 0x27

    aput-object v5, v1, v8

    new-array v5, v2, [Ljava/lang/String;

    const-string v8, "67"

    aput-object v8, v5, v3

    const-string v8, "compare-procedures"

    aput-object v8, v5, v4

    aput-object v0, v5, v7

    const/16 v8, 0x28

    aput-object v5, v1, v8

    const-string v5, "69"

    const-string v8, "basic-hash-tables"

    const-string v9, "gnu.kawa.slib.srfi69"

    filled-new-array {v5, v8, v9}, [Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0x29

    aput-object v5, v1, v8

    new-array v5, v2, [Ljava/lang/String;

    const-string v8, "71"

    aput-object v8, v5, v3

    aput-object v6, v5, v4

    aput-object v0, v5, v7

    const/16 v6, 0x2a

    aput-object v5, v1, v6

    new-array v5, v2, [Ljava/lang/String;

    const-string v6, "74"

    aput-object v6, v5, v3

    const-string v6, "blobs"

    aput-object v6, v5, v4

    aput-object v0, v5, v7

    const/16 v6, 0x2b

    aput-object v5, v1, v6

    new-array v5, v2, [Ljava/lang/String;

    const-string v6, "78"

    aput-object v6, v5, v3

    const-string v6, "lightweight-testing"

    aput-object v6, v5, v4

    aput-object v0, v5, v7

    const/16 v6, 0x2c

    aput-object v5, v1, v6

    new-array v5, v2, [Ljava/lang/String;

    const-string v6, "86"

    aput-object v6, v5, v3

    const-string v6, "mu-and-nu"

    aput-object v6, v5, v4

    aput-object v0, v5, v7

    const/16 v6, 0x2d

    aput-object v5, v1, v6

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "87"

    aput-object v5, v2, v3

    const-string v3, "case"

    aput-object v3, v2, v4

    aput-object v0, v2, v7

    const/16 v0, 0x2e

    aput-object v2, v1, v0

    const-string v0, "95"

    const-string v2, "sorting-and-merging"

    const-string v3, "kawa.lib.srfi95"

    filled-new-array {v0, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2f

    aput-object v0, v1, v2

    sput-object v1, Lkawa/standard/ImportFromLibrary;->SRFI97Map:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    const-string v0, ""

    const-string v1, "kawa.lib."

    .line 20
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkawa/standard/ImportFromLibrary;->classPrefixPath:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v6, p4

    .line 80
    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    .line 81
    instance-of v2, v1, Lgnu/lists/Pair;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 83
    :cond_0
    check-cast v1, Lgnu/lists/Pair;

    .line 84
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2

    .line 85
    invoke-static {v2, v3}, Lgnu/lists/LList;->listLength(Ljava/lang/Object;Z)I

    move-result v4

    const/16 v5, 0x65

    if-gtz v4, :cond_1

    const-string v1, "expected <library reference> which must be a list"

    .line 87
    invoke-virtual {v6, v5, v1}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    return v3

    .line 90
    :cond_1
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    .line 91
    instance-of v4, v1, Lgnu/lists/Pair;

    const/4 v7, 0x0

    if-eqz v4, :cond_2

    check-cast v1, Lgnu/lists/Pair;

    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lgnu/mapping/Procedure;

    if-eqz v4, :cond_2

    .line 92
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/Procedure;

    move-object v4, v1

    goto :goto_0

    :cond_2
    move-object v4, v7

    .line 96
    :goto_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    move-object v8, v7

    move-object v9, v8

    .line 97
    :goto_1
    instance-of v10, v2, Lgnu/lists/Pair;

    const/16 v11, 0x2e

    if-eqz v10, :cond_8

    .line 99
    check-cast v2, Lgnu/lists/Pair;

    .line 100
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v10

    .line 101
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    .line 102
    instance-of v12, v10, Lgnu/lists/Pair;

    if-eqz v12, :cond_4

    if-eqz v9, :cond_3

    .line 106
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "duplicate version reference - was "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v5, v9}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 109
    :cond_3
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "import version "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v9, v10

    goto :goto_1

    .line 111
    :cond_4
    instance-of v12, v10, Ljava/lang/String;

    if-eqz v12, :cond_6

    .line 113
    instance-of v8, v2, Lgnu/lists/Pair;

    if-eqz v8, :cond_5

    const-string v8, "source specifier must be last elemnt in library reference"

    .line 114
    invoke-virtual {v6, v5, v8}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 115
    :cond_5
    move-object v8, v10

    check-cast v8, Ljava/lang/String;

    goto :goto_1

    .line 119
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    if-lez v12, :cond_7

    .line 120
    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 121
    :cond_7
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_8
    move-object/from16 v9, p3

    if-eqz v8, :cond_9

    .line 129
    invoke-static {v8, v9}, Lkawa/standard/require;->lookupModuleFromSourcePath(Ljava/lang/String;Lgnu/expr/ScopeExp;)Lgnu/expr/ModuleInfo;

    move-result-object v2

    if-nez v2, :cond_a

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "malformed URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v5, v1}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    return v3

    :cond_9
    move-object v2, v7

    .line 136
    :cond_a
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v8, "srfi."

    .line 138
    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    const/4 v10, 0x1

    if-eqz v8, :cond_15

    const/4 v8, 0x5

    .line 140
    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgnu/expr/Compilation;->demangleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 141
    invoke-virtual {v8, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_b

    .line 146
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    move v11, v1

    move-object v12, v7

    goto :goto_2

    :cond_b
    add-int/lit8 v11, v1, 0x1

    .line 149
    invoke-virtual {v8, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    move-object v12, v11

    move v11, v1

    :goto_2
    const/4 v13, 0x2

    if-ge v11, v13, :cond_c

    .line 151
    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v14, 0x3a

    if-ne v1, v14, :cond_e

    :cond_c
    const/4 v1, 0x1

    :goto_3
    if-ne v1, v11, :cond_d

    .line 157
    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    .line 160
    :cond_d
    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0xa

    invoke-static {v14, v15}, Ljava/lang/Character;->digit(CI)I

    move-result v14

    if-gez v14, :cond_14

    :cond_e
    :goto_4
    move-object v14, v7

    if-nez v14, :cond_f

    const-string v1, "SRFI library reference must have the form: (srfi :NNN [name])"

    .line 166
    invoke-virtual {v6, v5, v1}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    return v3

    .line 169
    :cond_f
    sget-object v1, Lkawa/standard/ImportFromLibrary;->SRFI97Map:[[Ljava/lang/String;

    array-length v1, v1

    :cond_10
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_11

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown SRFI number \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' in SRFI library reference"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v5, v1}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    return v3

    .line 177
    :cond_11
    sget-object v7, Lkawa/standard/ImportFromLibrary;->SRFI97Map:[[Ljava/lang/String;

    aget-object v8, v7, v1

    aget-object v8, v8, v3

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 180
    aget-object v1, v7, v1

    aget-object v7, v1, v10

    .line 181
    aget-object v1, v1, v13

    if-eqz v12, :cond_12

    .line 182
    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12

    const/16 v8, 0x77

    .line 184
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "the name of SRFI "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " should be \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v12, 0x27

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v8, v11}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    :cond_12
    const-string v8, ""

    if-ne v1, v8, :cond_13

    return v10

    .line 189
    :cond_13
    sget-object v8, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    if-ne v1, v8, :cond_15

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sorry - Kawa does not support SRFI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v5, v1}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    return v3

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 198
    :cond_15
    iget-object v7, v0, Lkawa/standard/ImportFromLibrary;->classPrefixPath:[Ljava/lang/String;

    array-length v7, v7

    const/4 v8, 0x0

    :goto_5
    if-ge v8, v7, :cond_16

    .line 201
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v0, Lkawa/standard/ImportFromLibrary;->classPrefixPath:[Ljava/lang/String;

    aget-object v12, v12, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 204
    :try_start_0
    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object v12

    invoke-virtual {v12, v11}, Lgnu/expr/ModuleManager;->findWithClassName(Ljava/lang/String;)Lgnu/expr/ModuleInfo;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_16
    if-nez v2, :cond_17

    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown class "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v5, v1}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    return v3

    :cond_17
    const/4 v1, 0x0

    move-object v3, v4

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 216
    invoke-static/range {v1 .. v6}, Lkawa/standard/require;->importDefinitions(Ljava/lang/String;Lgnu/expr/ModuleInfo;Lgnu/mapping/Procedure;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lgnu/expr/Compilation;)Z

    return v10
.end method
