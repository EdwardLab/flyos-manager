.class public abstract Lgnu/commonlisp/lang/Lisp2;
.super Lgnu/kawa/lispexpr/LispLanguage;
.source "Lisp2.java"


# static fields
.field public static final FALSE:Lgnu/lists/LList;

.field public static final TRUE:Lgnu/mapping/Symbol;

.field public static final nilExpr:Lgnu/expr/Expression;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 18
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    sput-object v0, Lgnu/commonlisp/lang/Lisp2;->FALSE:Lgnu/lists/LList;

    .line 20
    invoke-static {}, Lgnu/mapping/Namespace;->getDefault()Lgnu/mapping/Namespace;

    move-result-object v1

    const-string v2, "t"

    invoke-virtual {v1, v2}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/commonlisp/lang/Lisp2;->TRUE:Lgnu/mapping/Symbol;

    .line 21
    new-instance v1, Lgnu/expr/QuoteExp;

    invoke-direct {v1, v0}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lgnu/commonlisp/lang/Lisp2;->nilExpr:Lgnu/expr/Expression;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lgnu/kawa/lispexpr/LispLanguage;-><init>()V

    return-void
.end method

.method public static asSymbol(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, "nil"

    if-ne p0, v0, :cond_0

    .line 79
    sget-object p0, Lgnu/commonlisp/lang/Lisp2;->FALSE:Lgnu/lists/LList;

    return-object p0

    .line 80
    :cond_0
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    invoke-virtual {v0, p0}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p0

    return-object p0
.end method

.method private defun(Lgnu/mapping/Procedure;)V
    .locals 1

    .line 127
    invoke-virtual {p1}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lgnu/commonlisp/lang/Lisp2;->defun(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static getString(Lgnu/mapping/Symbol;)Ljava/lang/Object;
    .locals 0

    .line 100
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lgnu/commonlisp/lang/Lisp2;->getString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 94
    new-instance v0, Lgnu/lists/FString;

    invoke-direct {v0, p0}, Lgnu/lists/FString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public booleanObject(Z)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_0

    .line 30
    sget-object p1, Lgnu/commonlisp/lang/Lisp2;->TRUE:Lgnu/mapping/Symbol;

    return-object p1

    :cond_0
    sget-object p1, Lgnu/commonlisp/lang/Lisp2;->FALSE:Lgnu/lists/LList;

    return-object p1
.end method

.method public createReadTable()Lgnu/kawa/lispexpr/ReadTable;
    .locals 2

    .line 160
    new-instance v0, Lgnu/commonlisp/lang/Lisp2ReadTable;

    invoke-direct {v0}, Lgnu/commonlisp/lang/Lisp2ReadTable;-><init>()V

    .line 161
    invoke-virtual {v0}, Lgnu/kawa/lispexpr/ReadTable;->initialize()V

    const/4 v1, 0x1

    .line 162
    invoke-virtual {v0, v1}, Lgnu/kawa/lispexpr/ReadTable;->setInitialColonIsKeyword(Z)V

    return-object v0
.end method

.method protected defun(Lgnu/mapping/Symbol;Ljava/lang/Object;)V
    .locals 2

    .line 116
    iget-object v0, p0, Lgnu/commonlisp/lang/Lisp2;->environ:Lgnu/mapping/Environment;

    sget-object v1, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1, p2}, Lgnu/mapping/Environment;->define(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    instance-of v0, p2, Lgnu/mapping/Procedure;

    if-eqz v0, :cond_0

    .line 119
    check-cast p2, Lgnu/mapping/Procedure;

    .line 120
    invoke-virtual {p2}, Lgnu/mapping/Procedure;->getSymbol()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 121
    invoke-virtual {p2, p1}, Lgnu/mapping/Procedure;->setSymbol(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected defun(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 105
    iget-object v0, p0, Lgnu/commonlisp/lang/Lisp2;->environ:Lgnu/mapping/Environment;

    invoke-virtual {p0, p1}, Lgnu/commonlisp/lang/Lisp2;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sget-object v2, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, p2}, Lgnu/mapping/Environment;->define(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 106
    instance-of v0, p2, Lgnu/mapping/Named;

    if-eqz v0, :cond_0

    .line 108
    check-cast p2, Lgnu/mapping/Named;

    .line 109
    invoke-interface {p2}, Lgnu/mapping/Named;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 110
    invoke-interface {p2, p1}, Lgnu/mapping/Named;->setName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public emitPushBoolean(ZLgnu/bytecode/CodeAttr;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string p1, "gnu.commonlisp.lang.Lisp2"

    .line 36
    invoke-static {p1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object p1

    const-string v0, "TRUE"

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object p1

    invoke-virtual {p2, p1}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    goto :goto_0

    .line 38
    :cond_0
    sget-object p1, Lgnu/expr/Compilation;->scmListType:Lgnu/bytecode/ClassType;

    const-string v0, "Empty"

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object p1

    invoke-virtual {p2, p1}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    :goto_0
    return-void
.end method

.method protected fromLangSymbol(Ljava/lang/Object;)Lgnu/mapping/Symbol;
    .locals 1

    .line 86
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne p1, v0, :cond_0

    .line 87
    iget-object p1, p0, Lgnu/commonlisp/lang/Lisp2;->environ:Lgnu/mapping/Environment;

    const-string v0, "nil"

    invoke-virtual {p1, v0}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p1

    return-object p1

    .line 88
    :cond_0
    invoke-super {p0, p1}, Lgnu/kawa/lispexpr/LispLanguage;->fromLangSymbol(Ljava/lang/Object;)Lgnu/mapping/Symbol;

    move-result-object p1

    return-object p1
.end method

.method public getEnvPropertyFor(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 58
    sget-object v0, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_1

    instance-of p1, p2, Lkawa/lang/Syntax;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 61
    :cond_1
    :goto_0
    sget-object p1, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    return-object p1
.end method

.method public getNamespaceOf(Lgnu/expr/Declaration;)I
    .locals 1

    .line 70
    invoke-virtual {p1}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x3

    return p1

    .line 72
    :cond_0
    invoke-virtual {p1}, Lgnu/expr/Declaration;->isProcedureDecl()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public hasSeparateFunctionNamespace()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected importLocation(Lgnu/mapping/Location;)V
    .locals 3

    .line 132
    move-object v0, p1

    check-cast v0, Lgnu/mapping/NamedLocation;

    invoke-virtual {v0}, Lgnu/mapping/NamedLocation;->getKeySymbol()Lgnu/mapping/Symbol;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lgnu/commonlisp/lang/Lisp2;->environ:Lgnu/mapping/Environment;

    sget-object v2, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lgnu/mapping/Environment;->isBound(Lgnu/mapping/Symbol;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 136
    :cond_0
    invoke-virtual {p1}, Lgnu/mapping/Location;->getBase()Lgnu/mapping/Location;

    move-result-object p1

    .line 142
    instance-of v1, p1, Lgnu/kawa/reflect/FieldLocation;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lgnu/kawa/reflect/FieldLocation;

    invoke-virtual {v1}, Lgnu/kawa/reflect/FieldLocation;->isProcedureOrSyntax()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    iget-object v1, p0, Lgnu/commonlisp/lang/Lisp2;->environ:Lgnu/mapping/Environment;

    sget-object v2, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    invoke-virtual {v1, v0, v2, p1}, Lgnu/mapping/Environment;->addLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)Lgnu/mapping/NamedLocation;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 147
    invoke-virtual {p1, v1}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 149
    instance-of v1, p1, Lgnu/mapping/Procedure;

    if-nez v1, :cond_4

    instance-of v1, p1, Lkawa/lang/Syntax;

    if-eqz v1, :cond_2

    goto :goto_0

    .line 151
    :cond_2
    instance-of v1, p1, Lgnu/kawa/lispexpr/LangObjType;

    if-eqz v1, :cond_3

    .line 152
    check-cast p1, Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {p1}, Lgnu/kawa/lispexpr/LangObjType;->getConstructor()Lgnu/mapping/Procedure;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lgnu/commonlisp/lang/Lisp2;->defun(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    goto :goto_1

    .line 154
    :cond_3
    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lgnu/commonlisp/lang/Lisp2;->define(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 150
    :cond_4
    :goto_0
    invoke-virtual {p0, v0, p1}, Lgnu/commonlisp/lang/Lisp2;->defun(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public isTrue(Ljava/lang/Object;)Z
    .locals 1

    .line 25
    sget-object v0, Lgnu/commonlisp/lang/Lisp2;->FALSE:Lgnu/lists/LList;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public noValue()Ljava/lang/Object;
    .locals 1

    .line 43
    sget-object v0, Lgnu/commonlisp/lang/Lisp2;->FALSE:Lgnu/lists/LList;

    return-object v0
.end method

.method public selfEvaluatingSymbol(Ljava/lang/Object;)Z
    .locals 1

    .line 53
    instance-of v0, p1, Lgnu/expr/Keyword;

    if-nez v0, :cond_1

    sget-object v0, Lgnu/commonlisp/lang/Lisp2;->TRUE:Lgnu/mapping/Symbol;

    if-eq p1, v0, :cond_1

    sget-object v0, Lgnu/commonlisp/lang/Lisp2;->FALSE:Lgnu/lists/LList;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
