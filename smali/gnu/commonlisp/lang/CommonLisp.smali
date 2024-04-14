.class public Lgnu/commonlisp/lang/CommonLisp;
.super Lgnu/commonlisp/lang/Lisp2;
.source "CommonLisp.java"


# static fields
.field static charIsInt:Z = false

.field public static final clispEnvironment:Lgnu/mapping/Environment;

.field static final displayFormat:Lgnu/lists/AbstractFormat;

.field public static final instance:Lgnu/commonlisp/lang/CommonLisp;

.field public static final numEqu:Lgnu/kawa/functions/NumberCompare;

.field public static final numGEq:Lgnu/kawa/functions/NumberCompare;

.field public static final numGrt:Lgnu/kawa/functions/NumberCompare;

.field public static final numLEq:Lgnu/kawa/functions/NumberCompare;

.field public static final numLss:Lgnu/kawa/functions/NumberCompare;

.field static final writeFormat:Lgnu/lists/AbstractFormat;


# instance fields
.field booleanType:Lgnu/kawa/lispexpr/LangPrimType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "clisp-environment"

    .line 58
    invoke-static {v0}, Lgnu/mapping/Environment;->make(Ljava/lang/String;)Lgnu/mapping/SimpleEnvironment;

    move-result-object v0

    sput-object v0, Lgnu/commonlisp/lang/CommonLisp;->clispEnvironment:Lgnu/mapping/Environment;

    .line 69
    new-instance v1, Lgnu/commonlisp/lang/CommonLisp;

    invoke-direct {v1}, Lgnu/commonlisp/lang/CommonLisp;-><init>()V

    sput-object v1, Lgnu/commonlisp/lang/CommonLisp;->instance:Lgnu/commonlisp/lang/CommonLisp;

    .line 71
    sget-object v2, Lgnu/commonlisp/lang/CommonLisp;->TRUE:Lgnu/mapping/Symbol;

    const-string v3, "t"

    invoke-virtual {v1, v3, v2}, Lgnu/commonlisp/lang/CommonLisp;->define(Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    sget-object v2, Lgnu/commonlisp/lang/CommonLisp;->FALSE:Lgnu/lists/LList;

    const-string v3, "nil"

    invoke-virtual {v1, v3, v2}, Lgnu/commonlisp/lang/CommonLisp;->define(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "="

    const/16 v3, 0x8

    .line 73
    invoke-static {v1, v2, v3}, Lgnu/kawa/functions/NumberCompare;->make(Lgnu/expr/Language;Ljava/lang/String;I)Lgnu/kawa/functions/NumberCompare;

    move-result-object v2

    sput-object v2, Lgnu/commonlisp/lang/CommonLisp;->numEqu:Lgnu/kawa/functions/NumberCompare;

    const-string v2, ">"

    const/16 v3, 0x10

    .line 75
    invoke-static {v1, v2, v3}, Lgnu/kawa/functions/NumberCompare;->make(Lgnu/expr/Language;Ljava/lang/String;I)Lgnu/kawa/functions/NumberCompare;

    move-result-object v2

    sput-object v2, Lgnu/commonlisp/lang/CommonLisp;->numGrt:Lgnu/kawa/functions/NumberCompare;

    const-string v2, ">="

    const/16 v3, 0x18

    .line 77
    invoke-static {v1, v2, v3}, Lgnu/kawa/functions/NumberCompare;->make(Lgnu/expr/Language;Ljava/lang/String;I)Lgnu/kawa/functions/NumberCompare;

    move-result-object v2

    sput-object v2, Lgnu/commonlisp/lang/CommonLisp;->numGEq:Lgnu/kawa/functions/NumberCompare;

    const-string v2, "<"

    const/4 v3, 0x4

    .line 79
    invoke-static {v1, v2, v3}, Lgnu/kawa/functions/NumberCompare;->make(Lgnu/expr/Language;Ljava/lang/String;I)Lgnu/kawa/functions/NumberCompare;

    move-result-object v2

    sput-object v2, Lgnu/commonlisp/lang/CommonLisp;->numLss:Lgnu/kawa/functions/NumberCompare;

    const-string v2, "<="

    const/16 v3, 0xc

    .line 81
    invoke-static {v1, v2, v3}, Lgnu/kawa/functions/NumberCompare;->make(Lgnu/expr/Language;Ljava/lang/String;I)Lgnu/kawa/functions/NumberCompare;

    move-result-object v2

    sput-object v2, Lgnu/commonlisp/lang/CommonLisp;->numLEq:Lgnu/kawa/functions/NumberCompare;

    .line 83
    invoke-static {v0}, Lgnu/mapping/Environment;->setSaveCurrent(Lgnu/mapping/Environment;)Lgnu/mapping/Environment;

    move-result-object v0

    .line 86
    :try_start_0
    invoke-virtual {v1}, Lgnu/commonlisp/lang/CommonLisp;->initLisp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    invoke-static {v0}, Lgnu/mapping/Environment;->restoreCurrent(Lgnu/mapping/Environment;)V

    .line 167
    new-instance v0, Lgnu/kawa/functions/DisplayFormat;

    const/4 v1, 0x1

    const/16 v2, 0x43

    invoke-direct {v0, v1, v2}, Lgnu/kawa/functions/DisplayFormat;-><init>(ZC)V

    sput-object v0, Lgnu/commonlisp/lang/CommonLisp;->writeFormat:Lgnu/lists/AbstractFormat;

    .line 168
    new-instance v0, Lgnu/kawa/functions/DisplayFormat;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Lgnu/kawa/functions/DisplayFormat;-><init>(ZC)V

    sput-object v0, Lgnu/commonlisp/lang/CommonLisp;->displayFormat:Lgnu/lists/AbstractFormat;

    return-void

    :catchall_0
    move-exception v1

    .line 90
    invoke-static {v0}, Lgnu/mapping/Environment;->restoreCurrent(Lgnu/mapping/Environment;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 1

    .line 95
    invoke-direct {p0}, Lgnu/commonlisp/lang/Lisp2;-><init>()V

    .line 96
    sget-object v0, Lgnu/commonlisp/lang/CommonLisp;->clispEnvironment:Lgnu/mapping/Environment;

    iput-object v0, p0, Lgnu/commonlisp/lang/CommonLisp;->environ:Lgnu/mapping/Environment;

    return-void
.end method

.method public static asChar(Ljava/lang/Object;)C
    .locals 1

    .line 37
    instance-of v0, p0, Lgnu/text/Char;

    if-eqz v0, :cond_0

    .line 38
    check-cast p0, Lgnu/text/Char;

    invoke-virtual {p0}, Lgnu/text/Char;->charValue()C

    move-result p0

    return p0

    .line 40
    :cond_0
    instance-of v0, p0, Lgnu/math/Numeric;

    if-eqz v0, :cond_1

    .line 41
    check-cast p0, Lgnu/math/Numeric;

    invoke-virtual {p0}, Lgnu/math/Numeric;->intValue()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    if-ltz p0, :cond_2

    const v0, 0xffff

    if-gt p0, v0, :cond_2

    int-to-char p0, p0

    return p0

    .line 45
    :cond_2
    new-instance p0, Ljava/lang/ClassCastException;

    const-string v0, "not a character value"

    invoke-direct {p0, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static asNumber(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 1

    .line 30
    instance-of v0, p0, Lgnu/text/Char;

    if-eqz v0, :cond_0

    .line 31
    check-cast p0, Lgnu/text/Char;

    invoke-virtual {p0}, Lgnu/text/Char;->intValue()I

    move-result p0

    invoke-static {p0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0

    .line 32
    :cond_0
    check-cast p0, Lgnu/math/Numeric;

    return-object p0
.end method

.method public static getCharacter(I)Ljava/lang/Object;
    .locals 1

    .line 22
    sget-boolean v0, Lgnu/commonlisp/lang/CommonLisp;->charIsInt:Z

    if-eqz v0, :cond_0

    .line 23
    invoke-static {p0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0

    :cond_0
    int-to-char p0, p0

    .line 25
    invoke-static {p0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lgnu/commonlisp/lang/CommonLisp;
    .locals 1

    .line 158
    sget-object v0, Lgnu/commonlisp/lang/CommonLisp;->instance:Lgnu/commonlisp/lang/CommonLisp;

    return-object v0
.end method

.method public static registerEnvironment()V
    .locals 1

    .line 164
    sget-object v0, Lgnu/commonlisp/lang/CommonLisp;->instance:Lgnu/commonlisp/lang/CommonLisp;

    invoke-static {v0}, Lgnu/expr/Language;->setDefaults(Lgnu/expr/Language;)V

    return-void
.end method


# virtual methods
.method public getFormat(Z)Lgnu/lists/AbstractFormat;
    .locals 0

    if-eqz p1, :cond_0

    .line 172
    sget-object p1, Lgnu/commonlisp/lang/CommonLisp;->writeFormat:Lgnu/lists/AbstractFormat;

    goto :goto_0

    :cond_0
    sget-object p1, Lgnu/commonlisp/lang/CommonLisp;->displayFormat:Lgnu/lists/AbstractFormat;

    :goto_0
    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "CommonLisp"

    return-object v0
.end method

.method public getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;
    .locals 1

    .line 186
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 188
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "boolean"

    .line 189
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    iget-object p1, p0, Lgnu/commonlisp/lang/CommonLisp;->booleanType:Lgnu/kawa/lispexpr/LangPrimType;

    if-nez p1, :cond_0

    .line 192
    new-instance p1, Lgnu/kawa/lispexpr/LangPrimType;

    sget-object v0, Lgnu/bytecode/Type;->booleanType:Lgnu/bytecode/PrimType;

    invoke-direct {p1, v0, p0}, Lgnu/kawa/lispexpr/LangPrimType;-><init>(Lgnu/bytecode/PrimType;Lgnu/expr/Language;)V

    iput-object p1, p0, Lgnu/commonlisp/lang/CommonLisp;->booleanType:Lgnu/kawa/lispexpr/LangPrimType;

    .line 193
    :cond_0
    iget-object p1, p0, Lgnu/commonlisp/lang/CommonLisp;->booleanType:Lgnu/kawa/lispexpr/LangPrimType;

    return-object p1

    .line 195
    :cond_1
    invoke-static {p1}, Lkawa/standard/Scheme;->getNamedType(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object p1

    return-object p1

    .line 197
    :cond_2
    invoke-static {p1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object p1

    return-object p1
.end method

.method public getTypeFor(Ljava/lang/String;)Lgnu/bytecode/Type;
    .locals 1

    const-string v0, "t"

    if-ne p1, v0, :cond_0

    const-string p1, "java.lang.Object"

    .line 181
    :cond_0
    invoke-static {p1}, Lkawa/standard/Scheme;->string2Type(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object p1

    return-object p1
.end method

.method initLisp()V
    .locals 5

    const-string v0, "gnu.commonlisp.lisp.PrimOps"

    .line 101
    invoke-static {}, Lkawa/standard/Scheme;->builtin()Lgnu/mapping/Environment;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/mapping/Environment;->enumerateAllLocations()Lgnu/mapping/LocationEnumeration;

    move-result-object v1

    .line 102
    :goto_0
    invoke-virtual {v1}, Lgnu/mapping/LocationEnumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    invoke-virtual {v1}, Lgnu/mapping/LocationEnumeration;->nextLocation()Lgnu/mapping/Location;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgnu/commonlisp/lang/CommonLisp;->importLocation(Lgnu/mapping/Location;)V

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v1, "kawa.lib.prim_syntax"

    .line 110
    invoke-virtual {p0, v1}, Lgnu/commonlisp/lang/CommonLisp;->loadClass(Ljava/lang/String;)V

    const-string v1, "kawa.lib.std_syntax"

    .line 111
    invoke-virtual {p0, v1}, Lgnu/commonlisp/lang/CommonLisp;->loadClass(Ljava/lang/String;)V

    const-string v1, "kawa.lib.lists"

    .line 112
    invoke-virtual {p0, v1}, Lgnu/commonlisp/lang/CommonLisp;->loadClass(Ljava/lang/String;)V

    const-string v1, "kawa.lib.strings"

    .line 113
    invoke-virtual {p0, v1}, Lgnu/commonlisp/lang/CommonLisp;->loadClass(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0, v0}, Lgnu/commonlisp/lang/CommonLisp;->loadClass(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :catch_0
    new-instance v1, Lkawa/lang/Lambda;

    invoke-direct {v1}, Lkawa/lang/Lambda;-><init>()V

    const-string v2, "&optional"

    .line 122
    invoke-static {v2}, Lgnu/commonlisp/lang/CommonLisp;->asSymbol(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "&rest"

    invoke-static {v3}, Lgnu/commonlisp/lang/CommonLisp;->asSymbol(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "&key"

    invoke-static {v4}, Lgnu/commonlisp/lang/CommonLisp;->asSymbol(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lkawa/lang/Lambda;->setKeywords(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 125
    sget-object v2, Lgnu/commonlisp/lang/CommonLisp;->nilExpr:Lgnu/expr/Expression;

    iput-object v2, v1, Lkawa/lang/Lambda;->defaultDefault:Lgnu/expr/Expression;

    const-string v2, "lambda"

    .line 126
    invoke-virtual {p0, v2, v1}, Lgnu/commonlisp/lang/CommonLisp;->defun(Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    new-instance v2, Lgnu/commonlisp/lang/defun;

    invoke-direct {v2, v1}, Lgnu/commonlisp/lang/defun;-><init>(Lkawa/lang/Lambda;)V

    const-string v3, "defun"

    invoke-virtual {p0, v3, v2}, Lgnu/commonlisp/lang/CommonLisp;->defun(Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    new-instance v2, Lgnu/commonlisp/lang/defvar;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lgnu/commonlisp/lang/defvar;-><init>(Z)V

    const-string v3, "defvar"

    invoke-virtual {p0, v3, v2}, Lgnu/commonlisp/lang/CommonLisp;->defun(Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    new-instance v2, Lgnu/commonlisp/lang/defvar;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lgnu/commonlisp/lang/defvar;-><init>(Z)V

    const-string v4, "defconst"

    invoke-virtual {p0, v4, v2}, Lgnu/commonlisp/lang/CommonLisp;->defun(Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    new-instance v2, Lgnu/commonlisp/lang/defun;

    invoke-direct {v2, v1}, Lgnu/commonlisp/lang/defun;-><init>(Lkawa/lang/Lambda;)V

    const-string v4, "defsubst"

    invoke-virtual {p0, v4, v2}, Lgnu/commonlisp/lang/CommonLisp;->defun(Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    new-instance v2, Lgnu/commonlisp/lang/function;

    invoke-direct {v2, v1}, Lgnu/commonlisp/lang/function;-><init>(Lkawa/lang/Syntax;)V

    const-string v1, "function"

    invoke-virtual {p0, v1, v2}, Lgnu/commonlisp/lang/CommonLisp;->defun(Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    new-instance v1, Lgnu/commonlisp/lang/setq;

    invoke-direct {v1}, Lgnu/commonlisp/lang/setq;-><init>()V

    const-string v2, "setq"

    invoke-virtual {p0, v2, v1}, Lgnu/commonlisp/lang/CommonLisp;->defun(Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    new-instance v1, Lgnu/commonlisp/lang/prog1;

    const-string v2, "prog1"

    invoke-direct {v1, v2, v3}, Lgnu/commonlisp/lang/prog1;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v2, v1}, Lgnu/commonlisp/lang/CommonLisp;->defun(Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    sget-object v1, Lgnu/commonlisp/lang/prog1;->prog2:Lgnu/commonlisp/lang/prog1;

    const-string v2, "prog2"

    invoke-virtual {p0, v2, v1}, Lgnu/commonlisp/lang/CommonLisp;->defun(Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    new-instance v1, Lkawa/standard/begin;

    invoke-direct {v1}, Lkawa/standard/begin;-><init>()V

    const-string v2, "progn"

    invoke-virtual {p0, v2, v1}, Lgnu/commonlisp/lang/CommonLisp;->defun(Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    new-instance v1, Lgnu/commonlisp/lang/UnwindProtect;

    invoke-direct {v1}, Lgnu/commonlisp/lang/UnwindProtect;-><init>()V

    const-string v2, "unwind-protect"

    invoke-virtual {p0, v2, v1}, Lgnu/commonlisp/lang/CommonLisp;->defun(Ljava/lang/String;Ljava/lang/Object;)V

    .line 138
    new-instance v1, Lgnu/kawa/functions/Not;

    invoke-direct {v1, p0}, Lgnu/kawa/functions/Not;-><init>(Lgnu/expr/Language;)V

    const-string v2, "not"

    .line 139
    invoke-virtual {p0, v2, v1}, Lgnu/commonlisp/lang/CommonLisp;->defun(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "null"

    .line 140
    invoke-virtual {p0, v2, v1}, Lgnu/commonlisp/lang/CommonLisp;->defun(Ljava/lang/String;Ljava/lang/Object;)V

    .line 141
    new-instance v1, Lgnu/kawa/functions/IsEq;

    const-string v2, "eq"

    invoke-direct {v1, p0, v2}, Lgnu/kawa/functions/IsEq;-><init>(Lgnu/expr/Language;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v1}, Lgnu/commonlisp/lang/CommonLisp;->defun(Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    new-instance v1, Lgnu/kawa/functions/IsEqual;

    const-string v2, "equal"

    invoke-direct {v1, p0, v2}, Lgnu/kawa/functions/IsEqual;-><init>(Lgnu/expr/Language;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v1}, Lgnu/commonlisp/lang/CommonLisp;->defun(Ljava/lang/String;Ljava/lang/Object;)V

    .line 143
    new-instance v1, Lgnu/kawa/reflect/InstanceOf;

    invoke-direct {v1, p0}, Lgnu/kawa/reflect/InstanceOf;-><init>(Lgnu/expr/Language;)V

    const-string v2, "typep"

    invoke-virtual {p0, v2, v1}, Lgnu/commonlisp/lang/CommonLisp;->defun(Ljava/lang/String;Ljava/lang/Object;)V

    .line 144
    sget-object v1, Lgnu/commonlisp/lang/CommonLisp;->displayFormat:Lgnu/lists/AbstractFormat;

    const-string v2, "princ"

    invoke-virtual {p0, v2, v1}, Lgnu/commonlisp/lang/CommonLisp;->defun(Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    sget-object v1, Lgnu/commonlisp/lang/CommonLisp;->writeFormat:Lgnu/lists/AbstractFormat;

    const-string v2, "prin1"

    invoke-virtual {p0, v2, v1}, Lgnu/commonlisp/lang/CommonLisp;->defun(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "="

    const-string v2, "gnu.commonlisp.lang.CommonLisp"

    const-string v3, "numEqu"

    .line 147
    invoke-virtual {p0, v1, v2, v3}, Lgnu/commonlisp/lang/CommonLisp;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "<"

    const-string v3, "numLss"

    .line 148
    invoke-virtual {p0, v1, v2, v3}, Lgnu/commonlisp/lang/CommonLisp;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ">"

    const-string v3, "numGrt"

    .line 149
    invoke-virtual {p0, v1, v2, v3}, Lgnu/commonlisp/lang/CommonLisp;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "<="

    const-string v3, "numLEq"

    .line 150
    invoke-virtual {p0, v1, v2, v3}, Lgnu/commonlisp/lang/CommonLisp;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ">="

    const-string v3, "numGEq"

    .line 151
    invoke-virtual {p0, v1, v2, v3}, Lgnu/commonlisp/lang/CommonLisp;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "functionp"

    .line 153
    invoke-virtual {p0, v1, v0}, Lgnu/commonlisp/lang/CommonLisp;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
