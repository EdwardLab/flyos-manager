.class public abstract Lgnu/kawa/lispexpr/LispLanguage;
.super Lgnu/expr/Language;
.source "LispLanguage.java"


# static fields
.field public static final bracket_apply_sym:Lgnu/mapping/Symbol;

.field public static final bracket_list_sym:Lgnu/mapping/Symbol;

.field public static getNamedPartLocation:Lgnu/kawa/reflect/StaticFieldLocation; = null

.field public static final lookup_sym:Lgnu/mapping/Symbol;

.field public static final quasiquote_sym:Ljava/lang/String; = "quasiquote"

.field public static final quote_sym:Ljava/lang/String; = "quote"

.field public static final unquote_sym:Ljava/lang/String; = "unquote"

.field public static final unquotesplicing_sym:Ljava/lang/String; = "unquote-splicing"


# instance fields
.field public defaultReadTable:Lgnu/kawa/lispexpr/ReadTable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 25
    sget-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    const-string v1, "$lookup$"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lgnu/kawa/lispexpr/LispLanguage;->lookup_sym:Lgnu/mapping/Symbol;

    .line 28
    sget-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    const-string v1, "$bracket-list$"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lgnu/kawa/lispexpr/LispLanguage;->bracket_list_sym:Lgnu/mapping/Symbol;

    .line 32
    sget-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    const-string v1, "$bracket-apply$"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lgnu/kawa/lispexpr/LispLanguage;->bracket_apply_sym:Lgnu/mapping/Symbol;

    .line 34
    new-instance v0, Lgnu/kawa/reflect/StaticFieldLocation;

    const-string v1, "gnu.kawa.functions.GetNamedPart"

    const-string v2, "getNamedPart"

    invoke-direct {v0, v1, v2}, Lgnu/kawa/reflect/StaticFieldLocation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lgnu/kawa/lispexpr/LispLanguage;->getNamedPartLocation:Lgnu/kawa/reflect/StaticFieldLocation;

    .line 36
    invoke-virtual {v0}, Lgnu/kawa/reflect/StaticFieldLocation;->setProcedure()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lgnu/expr/Language;-><init>()V

    .line 39
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispLanguage;->createReadTable()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v0

    iput-object v0, p0, Lgnu/kawa/lispexpr/LispLanguage;->defaultReadTable:Lgnu/kawa/lispexpr/ReadTable;

    return-void
.end method

.method public static langSymbolToSymbol(Ljava/lang/Object;)Lgnu/mapping/Symbol;
    .locals 1

    .line 176
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v0

    check-cast v0, Lgnu/kawa/lispexpr/LispLanguage;

    invoke-virtual {v0, p0}, Lgnu/kawa/lispexpr/LispLanguage;->fromLangSymbol(Ljava/lang/Object;)Lgnu/mapping/Symbol;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public checkDefaultBinding(Lgnu/mapping/Symbol;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract createReadTable()Lgnu/kawa/lispexpr/ReadTable;
.end method

.method public declFromField(Lgnu/expr/ModuleExp;Ljava/lang/Object;Lgnu/bytecode/Field;)Lgnu/expr/Declaration;
    .locals 0

    .line 129
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/Language;->declFromField(Lgnu/expr/ModuleExp;Ljava/lang/Object;Lgnu/bytecode/Field;)Lgnu/expr/Declaration;

    move-result-object p1

    .line 130
    invoke-virtual {p3}, Lgnu/bytecode/Field;->getModifiers()I

    move-result p3

    and-int/lit8 p3, p3, 0x10

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_1

    .line 131
    instance-of p2, p2, Lkawa/lang/Syntax;

    if-eqz p2, :cond_1

    .line 132
    invoke-virtual {p1}, Lgnu/expr/Declaration;->setSyntax()V

    :cond_1
    return-object p1
.end method

.method protected defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 154
    invoke-static {p1}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 144
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispLanguage;->hasSeparateFunctionNamespace()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 146
    :goto_0
    iget-object v1, p0, Lgnu/kawa/lispexpr/LispLanguage;->environ:Lgnu/mapping/Environment;

    iget-object v2, p0, Lgnu/kawa/lispexpr/LispLanguage;->environ:Lgnu/mapping/Environment;

    invoke-virtual {v2, p1}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p1

    invoke-static {v1, p1, v0, p2, p3}, Lgnu/kawa/reflect/StaticFieldLocation;->define(Lgnu/mapping/Environment;Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object p1

    .line 149
    invoke-virtual {p1}, Lgnu/kawa/reflect/StaticFieldLocation;->setSyntax()V

    return-void
.end method

.method protected fromLangSymbol(Ljava/lang/Object;)Lgnu/mapping/Symbol;
    .locals 1

    .line 181
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 182
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lgnu/kawa/lispexpr/LispLanguage;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p1

    return-object p1

    .line 183
    :cond_0
    check-cast p1, Lgnu/mapping/Symbol;

    return-object p1
.end method

.method public getCompilation(Lgnu/text/Lexer;Lgnu/text/SourceMessages;Lgnu/expr/NameLookup;)Lgnu/expr/Compilation;
    .locals 0

    .line 51
    new-instance p1, Lkawa/lang/Translator;

    invoke-direct {p1, p0, p2, p3}, Lkawa/lang/Translator;-><init>(Lgnu/expr/Language;Lgnu/text/SourceMessages;Lgnu/expr/NameLookup;)V

    return-object p1
.end method

.method public getLexer(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;)Lgnu/text/Lexer;
    .locals 1

    .line 46
    new-instance v0, Lgnu/kawa/lispexpr/LispReader;

    invoke-direct {v0, p1, p2}, Lgnu/kawa/lispexpr/LispReader;-><init>(Lgnu/text/LineBufferedReader;Lgnu/text/SourceMessages;)V

    return-object v0
.end method

.method public makeApply(Lgnu/expr/Expression;[Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 1

    .line 165
    new-instance v0, Lgnu/expr/ApplyExp;

    invoke-direct {v0, p1, p2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    return-object v0
.end method

.method public makeBody([Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 1

    .line 160
    new-instance v0, Lgnu/expr/BeginExp;

    invoke-direct {v0, p1}, Lgnu/expr/BeginExp;-><init>([Lgnu/expr/Expression;)V

    return-object v0
.end method

.method public parse(Lgnu/expr/Compilation;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 57
    check-cast p1, Lkawa/lang/Translator;

    .line 58
    iget-object v0, p1, Lkawa/lang/Translator;->lexer:Lgnu/text/Lexer;

    .line 59
    iget-object v1, p1, Lkawa/lang/Translator;->mainLambda:Lgnu/expr/ModuleExp;

    .line 60
    new-instance v2, Lgnu/mapping/Values;

    invoke-direct {v2}, Lgnu/mapping/Values;-><init>()V

    .line 61
    move-object v2, v0

    check-cast v2, Lgnu/kawa/lispexpr/LispReader;

    .line 62
    invoke-static {p1}, Lgnu/expr/Compilation;->setSaveCurrent(Lgnu/expr/Compilation;)Lgnu/expr/Compilation;

    move-result-object v3

    .line 65
    :try_start_0
    iget-object v4, p1, Lkawa/lang/Translator;->pendingForm:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 67
    iget-object v4, p1, Lkawa/lang/Translator;->pendingForm:Ljava/lang/Object;

    invoke-virtual {p1, v4, v1}, Lkawa/lang/Translator;->scanForm(Ljava/lang/Object;Lgnu/expr/ScopeExp;)V

    const/4 v4, 0x0

    .line 68
    iput-object v4, p1, Lkawa/lang/Translator;->pendingForm:Ljava/lang/Object;

    .line 72
    :cond_0
    invoke-virtual {v2}, Lgnu/kawa/lispexpr/LispReader;->readCommand()Ljava/lang/Object;

    move-result-object v4

    .line 73
    sget-object v5, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v4, v5, :cond_1

    and-int/lit8 v2, p2, 0x4

    if-eqz v2, :cond_3

    .line 115
    invoke-static {v3}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    return v7

    .line 79
    :cond_1
    :try_start_1
    invoke-virtual {p1, v4, v1}, Lkawa/lang/Translator;->scanForm(Ljava/lang/Object;Lgnu/expr/ScopeExp;)V

    and-int/lit8 v4, p2, 0x4

    if-eqz v4, :cond_6

    .line 82
    invoke-virtual {p1}, Lkawa/lang/Translator;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v4

    invoke-virtual {v4}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 87
    :goto_0
    invoke-virtual {v2}, Lgnu/kawa/lispexpr/LispReader;->peek()I

    move-result v4

    if-ltz v4, :cond_3

    const/16 v5, 0xd

    if-eq v4, v5, :cond_3

    const/16 v5, 0xa

    if-ne v4, v5, :cond_2

    goto :goto_1

    .line 90
    :cond_2
    invoke-virtual {v2}, Lgnu/kawa/lispexpr/LispReader;->skip()V

    goto :goto_0

    .line 101
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lgnu/text/Lexer;->peek()I

    move-result v2

    const/16 v4, 0x29

    if-ne v2, v4, :cond_4

    const-string v2, "An unexpected close paren was read."

    .line 102
    invoke-virtual {v0, v2}, Lgnu/text/Lexer;->fatal(Ljava/lang/String;)V

    .line 105
    :cond_4
    invoke-virtual {p1, v1}, Lkawa/lang/Translator;->finishModule(Lgnu/expr/ModuleExp;)V

    and-int/lit8 p2, p2, 0x8

    if-nez p2, :cond_5

    .line 109
    iput v7, p1, Lkawa/lang/Translator;->firstForm:I

    :cond_5
    const/4 p2, 0x4

    .line 111
    invoke-virtual {p1, p2}, Lkawa/lang/Translator;->setState(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    invoke-static {v3}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    return v6

    :cond_6
    and-int/lit8 v4, p2, 0x8

    if-eqz v4, :cond_0

    .line 95
    :try_start_2
    invoke-virtual {p1}, Lkawa/lang/Translator;->getState()I

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v5, 0x2

    if-lt v4, v5, :cond_0

    .line 115
    invoke-static {v3}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    return v6

    :catchall_0
    move-exception p1

    invoke-static {v3}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    throw p1
.end method

.method public resolve(Lgnu/expr/Compilation;)V
    .locals 1

    .line 123
    check-cast p1, Lkawa/lang/Translator;

    .line 124
    invoke-virtual {p1}, Lkawa/lang/Translator;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkawa/lang/Translator;->resolveModule(Lgnu/expr/ModuleExp;)V

    return-void
.end method

.method public selfEvaluatingSymbol(Ljava/lang/Object;)Z
    .locals 0

    .line 170
    instance-of p1, p1, Lgnu/expr/Keyword;

    return p1
.end method
