.class public Lkawa/lang/Translator;
.super Lgnu/expr/Compilation;
.source "Translator.java"


# static fields
.field private static errorExp:Lgnu/expr/Expression;

.field public static final getNamedPartDecl:Lgnu/expr/Declaration;


# instance fields
.field public curMethodLambda:Lgnu/expr/LambdaExp;

.field public currentMacroDefinition:Lkawa/lang/Macro;

.field currentSyntax:Lkawa/lang/Syntax;

.field private env:Lgnu/mapping/Environment;

.field public firstForm:I

.field public formStack:Ljava/util/Stack;

.field macroContext:Lgnu/expr/Declaration;

.field public matchArray:Lgnu/expr/Declaration;

.field notedAccess:Ljava/util/Vector;

.field public patternScope:Lkawa/lang/PatternScope;

.field public pendingForm:Ljava/lang/Object;

.field positionPair:Lgnu/lists/PairWithPosition;

.field renamedAliasStack:Ljava/util/Stack;

.field public templateScopeDecl:Lgnu/expr/Declaration;

.field public xmlElementNamespaces:Lgnu/xml/NamespaceBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "gnu.kawa.functions.GetNamedPart"

    const-string v1, "getNamedPart"

    .line 66
    invoke-static {v0, v1}, Lgnu/expr/Declaration;->getDeclarationFromStatic(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Declaration;

    move-result-object v0

    sput-object v0, Lkawa/lang/Translator;->getNamedPartDecl:Lgnu/expr/Declaration;

    .line 67
    sget-object v1, Lgnu/kawa/lispexpr/LispLanguage;->getNamedPartLocation:Lgnu/kawa/reflect/StaticFieldLocation;

    invoke-virtual {v1, v0}, Lgnu/kawa/reflect/StaticFieldLocation;->setDeclaration(Lgnu/expr/Declaration;)V

    .line 70
    new-instance v0, Lgnu/expr/ErrorExp;

    const-string v1, "unknown syntax error"

    invoke-direct {v0, v1}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkawa/lang/Translator;->errorExp:Lgnu/expr/Expression;

    return-void
.end method

.method public constructor <init>(Lgnu/expr/Language;Lgnu/text/SourceMessages;Lgnu/expr/NameLookup;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Lgnu/expr/Compilation;-><init>(Lgnu/expr/Language;Lgnu/text/SourceMessages;Lgnu/expr/NameLookup;)V

    .line 50
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    .line 57
    sget-object p1, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    iput-object p1, p0, Lkawa/lang/Translator;->xmlElementNamespaces:Lgnu/xml/NamespaceBinding;

    .line 75
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object p1

    iput-object p1, p0, Lkawa/lang/Translator;->env:Lgnu/mapping/Environment;

    return-void
.end method

.method static getOriginalRef(Lgnu/expr/Declaration;)Lgnu/expr/ReferenceExp;
    .locals 1

    if-eqz p0, :cond_0

    .line 147
    invoke-virtual {p0}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object p0

    .line 150
    instance-of v0, p0, Lgnu/expr/ReferenceExp;

    if-eqz v0, :cond_0

    .line 151
    check-cast p0, Lgnu/expr/ReferenceExp;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static listLength(Ljava/lang/Object;)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    .line 506
    :cond_0
    :goto_0
    instance-of v2, p0, Lkawa/lang/SyntaxForm;

    if-eqz v2, :cond_1

    .line 507
    check-cast p0, Lkawa/lang/SyntaxForm;

    invoke-interface {p0}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 508
    :cond_1
    :goto_1
    instance-of v2, v0, Lkawa/lang/SyntaxForm;

    if-eqz v2, :cond_2

    .line 509
    check-cast v0, Lkawa/lang/SyntaxForm;

    invoke-interface {v0}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 510
    :cond_2
    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne p0, v2, :cond_3

    return v1

    .line 512
    :cond_3
    instance-of v2, p0, Lgnu/lists/Pair;

    if-nez v2, :cond_4

    rsub-int/lit8 p0, v1, -0x1

    return p0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 515
    check-cast p0, Lgnu/lists/Pair;

    invoke-virtual {p0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p0

    .line 516
    :goto_2
    instance-of v2, p0, Lkawa/lang/SyntaxForm;

    if-eqz v2, :cond_5

    .line 517
    check-cast p0, Lkawa/lang/SyntaxForm;

    invoke-interface {p0}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    .line 518
    :cond_5
    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne p0, v2, :cond_6

    return v1

    .line 520
    :cond_6
    instance-of v2, p0, Lgnu/lists/Pair;

    if-nez v2, :cond_7

    rsub-int/lit8 p0, v1, -0x1

    return p0

    .line 522
    :cond_7
    check-cast v0, Lgnu/lists/Pair;

    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    .line 523
    check-cast p0, Lgnu/lists/Pair;

    invoke-virtual {p0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p0

    add-int/lit8 v1, v1, 0x1

    if-ne p0, v0, :cond_0

    const/high16 p0, -0x80000000

    return p0
.end method

.method private makeBody(ILgnu/expr/ScopeExp;)Lgnu/expr/Expression;
    .locals 5

    .line 1237
    iget-object v0, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    sub-int/2addr v0, p1

    if-nez v0, :cond_0

    .line 1239
    sget-object p1, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    return-object p1

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1242
    iget-object p1, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/expr/Expression;

    return-object p1

    .line 1246
    :cond_1
    new-array v1, v0, [Lgnu/expr/Expression;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 1248
    iget-object v3, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    add-int v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/expr/Expression;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1249
    :cond_2
    iget-object v0, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->setSize(I)V

    .line 1250
    instance-of p1, p2, Lgnu/expr/ModuleExp;

    if-eqz p1, :cond_3

    .line 1251
    new-instance p1, Lgnu/expr/ApplyExp;

    sget-object p2, Lgnu/kawa/functions/AppendValues;->appendValues:Lgnu/kawa/functions/AppendValues;

    invoke-direct {p1, p2, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    return-object p1

    .line 1254
    :cond_3
    invoke-virtual {p0}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object p1

    check-cast p1, Lgnu/kawa/lispexpr/LispLanguage;

    invoke-virtual {p1, v1}, Lgnu/kawa/lispexpr/LispLanguage;->makeBody([Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method

.method public static makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;
    .locals 1

    .line 1169
    instance-of v0, p0, Lgnu/lists/PairWithPosition;

    if-eqz v0, :cond_0

    .line 1170
    new-instance v0, Lgnu/lists/PairWithPosition;

    check-cast p0, Lgnu/lists/PairWithPosition;

    invoke-direct {v0, p0, p1, p2}, Lgnu/lists/PairWithPosition;-><init>(Lgnu/text/SourceLocator;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 1171
    :cond_0
    new-instance p0, Lgnu/lists/Pair;

    invoke-direct {p0, p1, p2}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private rewriteBody(Lgnu/lists/LList;)V
    .locals 2

    .line 1218
    :goto_0
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq p1, v0, :cond_0

    .line 1220
    check-cast p1, Lgnu/lists/Pair;

    .line 1221
    invoke-virtual {p0, p1}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1224
    :try_start_0
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lkawa/lang/Translator;->rewriteInBody(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1228
    invoke-virtual {p0, v0}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    .line 1230
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/lists/LList;

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1228
    invoke-virtual {p0, v0}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    throw p1

    :cond_0
    return-void
.end method

.method public static safeCar(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 475
    :goto_0
    instance-of v0, p0, Lkawa/lang/SyntaxForm;

    if-eqz v0, :cond_0

    .line 476
    check-cast p0, Lkawa/lang/SyntaxForm;

    invoke-interface {p0}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 477
    :cond_0
    instance-of v0, p0, Lgnu/lists/Pair;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 479
    :cond_1
    check-cast p0, Lgnu/lists/Pair;

    invoke-virtual {p0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkawa/lang/Translator;->stripSyntax(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static safeCdr(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 484
    :goto_0
    instance-of v0, p0, Lkawa/lang/SyntaxForm;

    if-eqz v0, :cond_0

    .line 485
    check-cast p0, Lkawa/lang/SyntaxForm;

    invoke-interface {p0}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 486
    :cond_0
    instance-of v0, p0, Lgnu/lists/Pair;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 488
    :cond_1
    check-cast p0, Lgnu/lists/Pair;

    invoke-virtual {p0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkawa/lang/Translator;->stripSyntax(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static setLine(Lgnu/expr/Declaration;Ljava/lang/Object;)V
    .locals 1

    .line 816
    instance-of v0, p1, Lgnu/text/SourceLocator;

    if-eqz v0, :cond_0

    .line 817
    check-cast p1, Lgnu/text/SourceLocator;

    invoke-virtual {p0, p1}, Lgnu/expr/Declaration;->setLocation(Lgnu/text/SourceLocator;)V

    :cond_0
    return-void
.end method

.method public static setLine(Lgnu/expr/Expression;Ljava/lang/Object;)V
    .locals 1

    .line 810
    instance-of v0, p1, Lgnu/text/SourceLocator;

    if-eqz v0, :cond_0

    .line 811
    check-cast p1, Lgnu/text/SourceLocator;

    invoke-virtual {p0, p1}, Lgnu/expr/Expression;->setLocation(Lgnu/text/SourceLocator;)V

    :cond_0
    return-void
.end method

.method public static stripSyntax(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 468
    :goto_0
    instance-of v0, p0, Lkawa/lang/SyntaxForm;

    if-eqz v0, :cond_0

    .line 469
    check-cast p0, Lkawa/lang/SyntaxForm;

    invoke-interface {p0}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method static vectorReverse(Ljava/util/Vector;II)V
    .locals 6

    .line 1347
    div-int/lit8 v0, p2, 0x2

    add-int/2addr p2, p1

    add-int/lit8 p2, p2, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    add-int v2, p1, v1

    .line 1351
    invoke-virtual {p0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    sub-int v4, p2, v1

    .line 1352
    invoke-virtual {p0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 1353
    invoke-virtual {p0, v3, v4}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static wrapSyntax(Ljava/lang/Object;Lkawa/lang/SyntaxForm;)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_1

    .line 936
    instance-of v0, p0, Lgnu/expr/Expression;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 939
    :cond_0
    invoke-static {p0, p1}, Lkawa/lang/SyntaxForms;->fromDatumIfNeeded(Ljava/lang/Object;Lkawa/lang/SyntaxForm;)Ljava/lang/Object;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method


# virtual methods
.method apply_rewrite(Lkawa/lang/Syntax;Lgnu/lists/Pair;)Lgnu/expr/Expression;
    .locals 1

    .line 129
    iget-object v0, p0, Lkawa/lang/Translator;->currentSyntax:Lkawa/lang/Syntax;

    .line 130
    iput-object p1, p0, Lkawa/lang/Translator;->currentSyntax:Lkawa/lang/Syntax;

    .line 133
    :try_start_0
    invoke-virtual {p1, p2, p0}, Lkawa/lang/Syntax;->rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    iput-object v0, p0, Lkawa/lang/Translator;->currentSyntax:Lkawa/lang/Syntax;

    return-object p1

    :catchall_0
    move-exception p1

    iput-object v0, p0, Lkawa/lang/Translator;->currentSyntax:Lkawa/lang/Syntax;

    throw p1
.end method

.method check_if_Syntax(Lgnu/expr/Declaration;)Lkawa/lang/Syntax;
    .locals 5

    .line 251
    invoke-static {p1}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v1

    const-wide/32 v2, 0x8000

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 254
    invoke-virtual {v0, v2, v3}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 258
    :try_start_0
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lgnu/expr/ReferenceExp;

    if-eqz v0, :cond_1

    .line 260
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v0

    check-cast v0, Lgnu/expr/ReferenceExp;

    invoke-virtual {v0}, Lgnu/expr/ReferenceExp;->contextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 263
    iput-object v0, p0, Lkawa/lang/Translator;->macroContext:Lgnu/expr/Declaration;

    goto :goto_0

    .line 264
    :cond_0
    iget-object v0, p0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    instance-of v0, v0, Lkawa/lang/TemplateScope;

    if-eqz v0, :cond_2

    .line 265
    iget-object v0, p0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    check-cast v0, Lkawa/lang/TemplateScope;

    iget-object v0, v0, Lkawa/lang/TemplateScope;->macroContext:Lgnu/expr/Declaration;

    iput-object v0, p0, Lkawa/lang/Translator;->macroContext:Lgnu/expr/Declaration;

    goto :goto_0

    .line 267
    :cond_1
    iget-object v0, p0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    instance-of v0, v0, Lkawa/lang/TemplateScope;

    if-eqz v0, :cond_2

    .line 268
    iget-object v0, p0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    check-cast v0, Lkawa/lang/TemplateScope;

    iget-object v0, v0, Lkawa/lang/TemplateScope;->macroContext:Lgnu/expr/Declaration;

    iput-object v0, p0, Lkawa/lang/Translator;->macroContext:Lgnu/expr/Declaration;

    .line 269
    :cond_2
    :goto_0
    iget-object v0, p0, Lkawa/lang/Translator;->env:Lgnu/mapping/Environment;

    invoke-virtual {v1, v0}, Lgnu/expr/Expression;->eval(Lgnu/mapping/Environment;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 273
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/16 v0, 0x65

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to evaluate macro for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto :goto_1

    .line 277
    :cond_3
    invoke-virtual {p1, v2, v3}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lgnu/expr/Declaration;->needsContext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 279
    invoke-static {p1}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Lgnu/expr/Declaration;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object p1

    .line 280
    invoke-virtual {p1, v4}, Lgnu/kawa/reflect/StaticFieldLocation;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    :cond_4
    :goto_1
    move-object p1, v4

    .line 282
    :goto_2
    instance-of v0, p1, Lkawa/lang/Syntax;

    if-eqz v0, :cond_5

    move-object v4, p1

    check-cast v4, Lkawa/lang/Syntax;

    :cond_5
    return-object v4
.end method

.method public define(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Lgnu/expr/ScopeExp;)Lgnu/expr/Declaration;
    .locals 3

    if-eqz p2, :cond_0

    .line 1487
    invoke-interface {p2}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v0

    invoke-virtual {p0}, Lkawa/lang/Translator;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1488
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v1, p1

    :goto_1
    const/16 v2, 0x77

    .line 1489
    invoke-virtual {p3, v1, v2, p0}, Lgnu/expr/ScopeExp;->getDefine(Ljava/lang/Object;CLgnu/expr/Compilation;)Lgnu/expr/Declaration;

    move-result-object p3

    if-eqz v0, :cond_2

    .line 1492
    invoke-interface {p2}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v0

    invoke-virtual {p0, p1, p3, v0}, Lkawa/lang/Translator;->makeRenamedAlias(Ljava/lang/Object;Lgnu/expr/Declaration;Lgnu/expr/ScopeExp;)Lgnu/expr/Declaration;

    move-result-object p1

    .line 1493
    invoke-interface {p2}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object p2

    invoke-virtual {p2, p1}, Lkawa/lang/TemplateScope;->addDeclaration(Lgnu/expr/Declaration;)V

    .line 1495
    :cond_2
    invoke-virtual {p0, p3}, Lkawa/lang/Translator;->push(Lgnu/expr/Declaration;)V

    return-object p3
.end method

.method public exp2Type(Lgnu/lists/Pair;)Lgnu/bytecode/Type;
    .locals 4

    .line 874
    invoke-virtual {p0, p1}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 877
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;

    move-result-object p1

    .line 878
    invoke-static {p1, p0}, Lgnu/expr/InlineCalls;->inlineCalls(Lgnu/expr/Expression;Lgnu/expr/Compilation;)Lgnu/expr/Expression;

    move-result-object p1

    .line 879
    instance-of v1, p1, Lgnu/expr/ErrorExp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 910
    invoke-virtual {p0, v0}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    return-object p1

    .line 881
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v1

    invoke-virtual {v1, p1}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v1, :cond_2

    .line 886
    :try_start_2
    iget-object v2, p0, Lkawa/lang/Translator;->env:Lgnu/mapping/Environment;

    invoke-virtual {p1, v2}, Lgnu/expr/Expression;->eval(Lgnu/mapping/Environment;)Ljava/lang/Object;

    move-result-object v2

    .line 887
    instance-of v3, v2, Ljava/lang/Class;

    if-eqz v3, :cond_1

    .line 888
    check-cast v2, Ljava/lang/Class;

    invoke-static {v2}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v1

    goto :goto_0

    .line 889
    :cond_1
    instance-of v3, v2, Lgnu/bytecode/Type;

    if-eqz v3, :cond_2

    .line 890
    check-cast v2, Lgnu/bytecode/Type;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v2

    goto :goto_0

    :catchall_0
    nop

    :cond_2
    :goto_0
    if-nez v1, :cond_4

    .line 898
    :try_start_3
    instance-of v1, p1, Lgnu/expr/ReferenceExp;

    const/16 v2, 0x65

    if-eqz v1, :cond_3

    .line 899
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown type name \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p1, Lgnu/expr/ReferenceExp;

    invoke-virtual {p1}, Lgnu/expr/ReferenceExp;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x27

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string p1, "invalid type spec (must be \"type\" or \'type or <type>)"

    .line 902
    invoke-virtual {p0, v2, p1}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 904
    :goto_1
    sget-object p1, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 910
    invoke-virtual {p0, v0}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    return-object p1

    :cond_4
    invoke-virtual {p0, v0}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    return-object v1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, v0}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    throw p1
.end method

.method public finishModule(Lgnu/expr/ModuleExp;)V
    .locals 9

    .line 1303
    invoke-virtual {p1}, Lgnu/expr/ModuleExp;->isStatic()Z

    move-result v0

    .line 1304
    invoke-virtual {p1}, Lgnu/expr/ModuleExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_b

    const-wide/16 v2, 0x200

    .line 1307
    invoke-virtual {v1, v2, v3}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v2

    const/16 v3, 0x65

    const-wide/16 v4, 0x400

    const-string v6, "\'"

    const-wide/16 v7, 0x800

    if-eqz v2, :cond_2

    .line 1310
    invoke-virtual {v1, v4, v5}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "\' exported but never defined"

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v7, v8}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "\' declared static but never defined"

    goto :goto_1

    :cond_1
    const-string v2, "\' declared but never defined"

    .line 1316
    :goto_1
    invoke-virtual {p0, v3, v1, v6, v2}, Lkawa/lang/Translator;->error(CLgnu/expr/Declaration;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/16 v2, 0x4000

    .line 1318
    invoke-virtual {p1, v2}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lkawa/lang/Translator;->generateMain:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lkawa/lang/Translator;->immediate:Z

    if-nez v2, :cond_6

    .line 1321
    :cond_3
    invoke-virtual {v1, v4, v5}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1323
    invoke-virtual {v1}, Lgnu/expr/Declaration;->isPrivate()Z

    move-result v2

    if-eqz v2, :cond_6

    const-wide/32 v4, 0x1000000

    .line 1325
    invoke-virtual {v1, v4, v5}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "\' is declared both private and exported"

    .line 1326
    invoke-virtual {p0, v3, v1, v6, v2}, Lkawa/lang/Translator;->error(CLgnu/expr/Declaration;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/4 v2, 0x0

    .line 1328
    invoke-virtual {v1, v2}, Lgnu/expr/Declaration;->setPrivate(Z)V

    goto :goto_2

    :cond_5
    const/4 v2, 0x1

    .line 1332
    invoke-virtual {v1, v2}, Lgnu/expr/Declaration;->setPrivate(Z)V

    :cond_6
    :goto_2
    if-eqz v0, :cond_7

    .line 1335
    invoke-virtual {v1, v7, v8}, Lgnu/expr/Declaration;->setFlag(J)V

    goto :goto_3

    :cond_7
    const/high16 v2, 0x10000

    .line 1336
    invoke-virtual {p1, v2}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1, v7, v8}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    sget v2, Lgnu/expr/Compilation;->moduleStatic:I

    if-ltz v2, :cond_9

    const/high16 v2, 0x20000

    invoke-virtual {p1, v2}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    const-wide/16 v2, 0x1000

    .line 1340
    invoke-virtual {v1, v2, v3}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 1305
    :cond_a
    :goto_3
    invoke-virtual {v1}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v1

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method public getCurrentSyntax()Lkawa/lang/Syntax;
    .locals 1

    .line 112
    iget-object v0, p0, Lkawa/lang/Translator;->currentSyntax:Lkawa/lang/Syntax;

    return-object v0
.end method

.method public final getGlobalEnvironment()Lgnu/mapping/Environment;
    .locals 1

    .line 78
    iget-object v0, p0, Lkawa/lang/Translator;->env:Lgnu/mapping/Environment;

    return-object v0
.end method

.method public lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;
    .locals 2

    .line 219
    iget-object v0, p0, Lkawa/lang/Translator;->lexical:Lgnu/expr/NameLookup;

    invoke-virtual {v0, p1, p2}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {p0}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lgnu/expr/Language;->hasNamespace(Lgnu/expr/Declaration;I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 222
    :cond_0
    invoke-virtual {p0}, Lkawa/lang/Translator;->currentModule()Lgnu/expr/ModuleExp;

    move-result-object v0

    invoke-virtual {p0}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Lgnu/expr/ModuleExp;->lookup(Ljava/lang/Object;Lgnu/expr/Language;I)Lgnu/expr/Declaration;

    move-result-object p1

    return-object p1
.end method

.method public lookupGlobal(Ljava/lang/Object;)Lgnu/expr/Declaration;
    .locals 1

    const/4 v0, -0x1

    .line 228
    invoke-virtual {p0, p1, v0}, Lkawa/lang/Translator;->lookupGlobal(Ljava/lang/Object;I)Lgnu/expr/Declaration;

    move-result-object p1

    return-object p1
.end method

.method public lookupGlobal(Ljava/lang/Object;I)Lgnu/expr/Declaration;
    .locals 2

    .line 234
    invoke-virtual {p0}, Lkawa/lang/Translator;->currentModule()Lgnu/expr/ModuleExp;

    move-result-object v0

    .line 235
    invoke-virtual {p0}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Lgnu/expr/ModuleExp;->lookup(Ljava/lang/Object;Lgnu/expr/Language;I)Lgnu/expr/Declaration;

    move-result-object p2

    if-nez p2, :cond_0

    .line 238
    invoke-virtual {v0, p1}, Lgnu/expr/ModuleExp;->getNoDefine(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object p2

    const/4 p1, 0x1

    .line 239
    invoke-virtual {p2, p1}, Lgnu/expr/Declaration;->setIndirectBinding(Z)V

    :cond_0
    return-object p2
.end method

.method public makeRenamedAlias(Lgnu/expr/Declaration;Lgnu/expr/ScopeExp;)Lgnu/expr/Declaration;
    .locals 1

    if-nez p2, :cond_0

    return-object p1

    .line 1423
    :cond_0
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lkawa/lang/Translator;->makeRenamedAlias(Ljava/lang/Object;Lgnu/expr/Declaration;Lgnu/expr/ScopeExp;)Lgnu/expr/Declaration;

    move-result-object p1

    return-object p1
.end method

.method public makeRenamedAlias(Ljava/lang/Object;Lgnu/expr/Declaration;Lgnu/expr/ScopeExp;)Lgnu/expr/Declaration;
    .locals 1

    .line 1430
    new-instance v0, Lgnu/expr/Declaration;

    invoke-direct {v0, p1}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 1431
    invoke-virtual {v0, p1}, Lgnu/expr/Declaration;->setAlias(Z)V

    .line 1432
    invoke-virtual {v0, p1}, Lgnu/expr/Declaration;->setPrivate(Z)V

    .line 1433
    iput-object p3, v0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    .line 1434
    new-instance p3, Lgnu/expr/ReferenceExp;

    invoke-direct {p3, p2}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    .line 1435
    invoke-virtual {p3, p1}, Lgnu/expr/ReferenceExp;->setDontDereference(Z)V

    .line 1436
    invoke-virtual {v0, p3}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    return-object v0
.end method

.method public matchQuoted(Lgnu/lists/Pair;)Ljava/lang/Object;
    .locals 2

    .line 210
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "quote"

    invoke-virtual {p0, v0, v1}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lgnu/lists/Pair;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/lists/Pair;

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v0, v1, :cond_0

    .line 213
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final matches(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 164
    invoke-virtual {p0, p1, v0, p2}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public matches(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Lgnu/mapping/Symbol;)Z
    .locals 1

    .line 194
    instance-of p2, p1, Lkawa/lang/SyntaxForm;

    if-eqz p2, :cond_0

    .line 197
    check-cast p1, Lkawa/lang/SyntaxForm;

    invoke-interface {p1}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object p1

    .line 199
    :cond_0
    instance-of p2, p1, Lgnu/mapping/SimpleSymbol;

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lkawa/lang/Translator;->selfEvaluatingSymbol(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 201
    iget-object p2, p0, Lkawa/lang/Translator;->lexical:Lgnu/expr/NameLookup;

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;

    move-result-object p2

    invoke-static {p2}, Lkawa/lang/Translator;->getOriginalRef(Lgnu/expr/Declaration;)Lgnu/expr/ReferenceExp;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 203
    invoke-virtual {p2}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object p1

    :cond_1
    if-ne p1, p3, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public matches(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Ljava/lang/String;)Z
    .locals 1

    .line 173
    instance-of p2, p1, Lkawa/lang/SyntaxForm;

    if-eqz p2, :cond_0

    .line 176
    check-cast p1, Lkawa/lang/SyntaxForm;

    invoke-interface {p1}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object p1

    .line 178
    :cond_0
    instance-of p2, p1, Lgnu/mapping/SimpleSymbol;

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lkawa/lang/Translator;->selfEvaluatingSymbol(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 180
    iget-object p2, p0, Lkawa/lang/Translator;->lexical:Lgnu/expr/NameLookup;

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;

    move-result-object p2

    invoke-static {p2}, Lkawa/lang/Translator;->getOriginalRef(Lgnu/expr/Declaration;)Lgnu/expr/ReferenceExp;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 182
    invoke-virtual {p2}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object p1

    .line 184
    :cond_1
    instance-of p2, p1, Lgnu/mapping/SimpleSymbol;

    if-eqz p2, :cond_2

    check-cast p1, Lgnu/mapping/Symbol;

    invoke-virtual {p1}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    if-ne p1, p3, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public namespaceResolve(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/mapping/Symbol;
    .locals 0

    .line 463
    invoke-virtual {p0, p1}, Lkawa/lang/Translator;->namespaceResolvePrefix(Lgnu/expr/Expression;)Lgnu/mapping/Namespace;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lkawa/lang/Translator;->namespaceResolve(Lgnu/mapping/Namespace;Lgnu/expr/Expression;)Lgnu/mapping/Symbol;

    move-result-object p1

    return-object p1
.end method

.method public namespaceResolve(Lgnu/mapping/Namespace;Lgnu/expr/Expression;)Lgnu/mapping/Symbol;
    .locals 1

    if-eqz p1, :cond_0

    .line 453
    instance-of v0, p2, Lgnu/expr/QuoteExp;

    if-eqz v0, :cond_0

    .line 455
    check-cast p2, Lgnu/expr/QuoteExp;

    invoke-virtual {p2}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    .line 456
    invoke-virtual {p1, p2}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public namespaceResolve(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 566
    instance-of v0, p1, Lgnu/mapping/SimpleSymbol;

    if-nez v0, :cond_1

    .line 569
    instance-of v0, p1, Lgnu/lists/Pair;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lgnu/lists/Pair;

    invoke-static {v0}, Lkawa/lang/Translator;->safeCar(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lgnu/kawa/lispexpr/LispLanguage;->lookup_sym:Lgnu/mapping/Symbol;

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lgnu/lists/Pair;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/lists/Pair;

    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lgnu/lists/Pair;

    if-eqz v1, :cond_1

    .line 574
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v1

    .line 575
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/lists/Pair;

    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v0

    .line 576
    invoke-virtual {p0, v1, v0}, Lkawa/lang/Translator;->namespaceResolve(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/mapping/Symbol;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    .line 579
    :cond_0
    invoke-static {v1, v0}, Lgnu/kawa/functions/CompileNamedPart;->combineName(Lgnu/expr/Expression;Lgnu/expr/Expression;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 581
    sget-object p1, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    invoke-virtual {p1, v0}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public namespaceResolvePrefix(Lgnu/expr/Expression;)Lgnu/mapping/Namespace;
    .locals 4

    .line 421
    instance-of v0, p1, Lgnu/expr/ReferenceExp;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 423
    check-cast p1, Lgnu/expr/ReferenceExp;

    .line 424
    invoke-virtual {p1}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v0

    if-eqz v0, :cond_2

    const-wide/32 v2, 0x10000

    .line 426
    invoke-virtual {v0, v2, v3}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 433
    :cond_0
    invoke-virtual {v0}, Lgnu/expr/Declaration;->isNamespaceDecl()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 435
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getConstantValue()Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    :cond_1
    move-object p1, v1

    goto :goto_2

    .line 428
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object p1

    .line 429
    instance-of v0, p1, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_3

    check-cast p1, Lgnu/mapping/Symbol;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lkawa/lang/Translator;->env:Lgnu/mapping/Environment;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p1

    .line 431
    :goto_1
    iget-object v0, p0, Lkawa/lang/Translator;->env:Lgnu/mapping/Environment;

    invoke-virtual {v0, p1, v1}, Lgnu/mapping/Environment;->get(Lgnu/mapping/EnvironmentKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 439
    :goto_2
    instance-of v0, p1, Lgnu/mapping/Namespace;

    if-eqz v0, :cond_5

    .line 441
    check-cast p1, Lgnu/mapping/Namespace;

    .line 442
    invoke-virtual {p1}, Lgnu/mapping/Namespace;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v2, "class:"

    .line 443
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-object v1

    :cond_4
    return-object p1

    :cond_5
    return-object v1
.end method

.method public noteAccess(Ljava/lang/Object;Lgnu/expr/ScopeExp;)V
    .locals 1

    .line 1266
    iget-object v0, p0, Lkawa/lang/Translator;->notedAccess:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 1267
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lkawa/lang/Translator;->notedAccess:Ljava/util/Vector;

    .line 1268
    :cond_0
    iget-object v0, p0, Lkawa/lang/Translator;->notedAccess:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1269
    iget-object p1, p0, Lkawa/lang/Translator;->notedAccess:Ljava/util/Vector;

    invoke-virtual {p1, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public parse(Ljava/lang/Object;)Lgnu/expr/Expression;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method

.method public popForms(I)Ljava/lang/Object;
    .locals 4

    .line 944
    iget-object v0, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 946
    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :cond_0
    add-int/lit8 v1, p1, 0x1

    if-ne v0, v1, :cond_1

    .line 949
    iget-object v0, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 952
    :cond_1
    new-instance v1, Lgnu/mapping/Values;

    invoke-direct {v1}, Lgnu/mapping/Values;-><init>()V

    move v2, p1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 954
    iget-object v3, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v3, v2}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lgnu/mapping/Values;->writeObject(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 957
    :goto_1
    iget-object v1, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v1, p1}, Ljava/util/Stack;->setSize(I)V

    return-object v0
.end method

.method public popPositionOf(Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 854
    :cond_0
    invoke-virtual {p0, p1}, Lkawa/lang/Translator;->setLine(Ljava/lang/Object;)V

    .line 855
    check-cast p1, Lgnu/lists/PairWithPosition;

    iput-object p1, p0, Lkawa/lang/Translator;->positionPair:Lgnu/lists/PairWithPosition;

    .line 856
    invoke-virtual {p1}, Lgnu/lists/PairWithPosition;->getCar()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lgnu/expr/Special;->eof:Ljava/lang/Object;

    if-ne p1, v0, :cond_1

    .line 857
    iget-object p1, p0, Lkawa/lang/Translator;->positionPair:Lgnu/lists/PairWithPosition;

    invoke-virtual {p1}, Lgnu/lists/PairWithPosition;->getCdr()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/lists/PairWithPosition;

    iput-object p1, p0, Lkawa/lang/Translator;->positionPair:Lgnu/lists/PairWithPosition;

    :cond_1
    return-void
.end method

.method public popRenamedAlias(I)V
    .locals 4

    :cond_0
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_1

    .line 1474
    iget-object v0, p0, Lkawa/lang/Translator;->renamedAliasStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/expr/ScopeExp;

    .line 1475
    iget-object v1, p0, Lkawa/lang/Translator;->renamedAliasStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/expr/Declaration;

    .line 1476
    invoke-static {v1}, Lkawa/lang/Translator;->getOriginalRef(Lgnu/expr/Declaration;)Lgnu/expr/ReferenceExp;

    move-result-object v2

    invoke-virtual {v2}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v2

    .line 1477
    invoke-virtual {v1}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/expr/Declaration;->setSymbol(Ljava/lang/Object;)V

    .line 1478
    invoke-virtual {v0, v1}, Lgnu/expr/ScopeExp;->remove(Lgnu/expr/Declaration;)V

    .line 1479
    iget-object v1, p0, Lkawa/lang/Translator;->renamedAliasStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1481
    check-cast v1, Lgnu/expr/Declaration;

    invoke-virtual {v0, v1}, Lgnu/expr/ScopeExp;->addDeclaration(Lgnu/expr/Declaration;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public processAccesses()V
    .locals 7

    .line 1278
    iget-object v0, p0, Lkawa/lang/Translator;->notedAccess:Ljava/util/Vector;

    if-nez v0, :cond_0

    return-void

    .line 1280
    :cond_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 1281
    iget-object v1, p0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    .line 1284
    iget-object v4, p0, Lkawa/lang/Translator;->notedAccess:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 1285
    iget-object v5, p0, Lkawa/lang/Translator;->notedAccess:Ljava/util/Vector;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/expr/ScopeExp;

    .line 1286
    iget-object v6, p0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    if-eq v6, v5, :cond_1

    .line 1287
    invoke-virtual {p0, v5}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 1288
    :cond_1
    iget-object v5, p0, Lkawa/lang/Translator;->lexical:Lgnu/expr/NameLookup;

    const/4 v6, -0x1

    invoke-virtual {v5, v4, v6}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;

    move-result-object v4

    if-eqz v4, :cond_2

    const-wide/32 v5, 0x10000

    .line 1289
    invoke-virtual {v4, v5, v6}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1291
    invoke-virtual {v4}, Lgnu/expr/Declaration;->getContext()Lgnu/expr/ScopeExp;

    move-result-object v5

    invoke-virtual {v5}, Lgnu/expr/ScopeExp;->currentLambda()Lgnu/expr/LambdaExp;

    move-result-object v5

    invoke-virtual {v5, v4}, Lgnu/expr/LambdaExp;->capture(Lgnu/expr/Declaration;)V

    const/4 v5, 0x1

    .line 1292
    invoke-virtual {v4, v5}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 1293
    invoke-virtual {v4, v2}, Lgnu/expr/Declaration;->setSimple(Z)V

    const-wide/32 v5, 0x80000

    .line 1294
    invoke-virtual {v4, v5, v6}, Lgnu/expr/Declaration;->setFlag(J)V

    :cond_2
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 1297
    :cond_3
    iget-object v0, p0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    if-eq v0, v1, :cond_4

    .line 1298
    invoke-virtual {p0, v1}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    :cond_4
    return-void
.end method

.method public pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 827
    instance-of v0, p1, Lkawa/lang/SyntaxForm;

    if-eqz v0, :cond_0

    .line 828
    check-cast p1, Lkawa/lang/SyntaxForm;

    invoke-interface {p1}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object p1

    .line 829
    :cond_0
    instance-of v0, p1, Lgnu/lists/PairWithPosition;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 831
    :cond_1
    move-object v0, p1

    check-cast v0, Lgnu/lists/PairWithPosition;

    .line 833
    iget-object v1, p0, Lkawa/lang/Translator;->positionPair:Lgnu/lists/PairWithPosition;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lgnu/lists/PairWithPosition;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lkawa/lang/Translator;->getFileName()Ljava/lang/String;

    move-result-object v2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lkawa/lang/Translator;->positionPair:Lgnu/lists/PairWithPosition;

    invoke-virtual {v1}, Lgnu/lists/PairWithPosition;->getLineNumber()I

    move-result v1

    invoke-virtual {p0}, Lkawa/lang/Translator;->getLineNumber()I

    move-result v2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lkawa/lang/Translator;->positionPair:Lgnu/lists/PairWithPosition;

    invoke-virtual {v1}, Lgnu/lists/PairWithPosition;->getColumnNumber()I

    move-result v1

    invoke-virtual {p0}, Lkawa/lang/Translator;->getColumnNumber()I

    move-result v2

    if-eq v1, v2, :cond_2

    goto :goto_0

    .line 841
    :cond_2
    iget-object v1, p0, Lkawa/lang/Translator;->positionPair:Lgnu/lists/PairWithPosition;

    goto :goto_1

    .line 838
    :cond_3
    :goto_0
    new-instance v1, Lgnu/lists/PairWithPosition;

    sget-object v2, Lgnu/expr/Special;->eof:Ljava/lang/Object;

    iget-object v3, p0, Lkawa/lang/Translator;->positionPair:Lgnu/lists/PairWithPosition;

    invoke-direct {v1, p0, v2, v3}, Lgnu/lists/PairWithPosition;-><init>(Lgnu/text/SourceLocator;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 842
    :goto_1
    invoke-virtual {p0, p1}, Lkawa/lang/Translator;->setLine(Ljava/lang/Object;)V

    .line 843
    iput-object v0, p0, Lkawa/lang/Translator;->positionPair:Lgnu/lists/PairWithPosition;

    return-object v1
.end method

.method public pushRenamedAlias(Lgnu/expr/Declaration;)V
    .locals 3

    .line 1455
    invoke-static {p1}, Lkawa/lang/Translator;->getOriginalRef(Lgnu/expr/Declaration;)Lgnu/expr/ReferenceExp;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v0

    .line 1456
    iget-object v1, p1, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    const/4 v2, 0x0

    .line 1457
    invoke-virtual {v0, v2}, Lgnu/expr/Declaration;->setSymbol(Ljava/lang/Object;)V

    .line 1458
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgnu/expr/ScopeExp;->lookup(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1460
    invoke-virtual {v1, v0}, Lgnu/expr/ScopeExp;->remove(Lgnu/expr/Declaration;)V

    .line 1461
    :cond_0
    invoke-virtual {v1, p1}, Lgnu/expr/ScopeExp;->addDeclaration(Lgnu/expr/Declaration;)V

    .line 1462
    iget-object v2, p0, Lkawa/lang/Translator;->renamedAliasStack:Ljava/util/Stack;

    if-nez v2, :cond_1

    .line 1463
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Lkawa/lang/Translator;->renamedAliasStack:Ljava/util/Stack;

    .line 1464
    :cond_1
    iget-object v2, p0, Lkawa/lang/Translator;->renamedAliasStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1465
    iget-object v0, p0, Lkawa/lang/Translator;->renamedAliasStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1466
    iget-object p1, p0, Lkawa/lang/Translator;->renamedAliasStack:Ljava/util/Stack;

    invoke-virtual {p1, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public resolveModule(Lgnu/expr/ModuleExp;)V
    .locals 12

    .line 1359
    iget-object v0, p0, Lkawa/lang/Translator;->pendingImports:Ljava/util/Stack;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lkawa/lang/Translator;->pendingImports:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_3

    .line 1362
    iget-object v3, p0, Lkawa/lang/Translator;->pendingImports:Ljava/util/Stack;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lgnu/expr/ModuleInfo;

    .line 1363
    iget-object v1, p0, Lkawa/lang/Translator;->pendingImports:Ljava/util/Stack;

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lgnu/expr/ScopeExp;

    .line 1364
    iget-object v1, p0, Lkawa/lang/Translator;->pendingImports:Ljava/util/Stack;

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/expr/Expression;

    .line 1365
    iget-object v3, p0, Lkawa/lang/Translator;->pendingImports:Ljava/util/Stack;

    add-int/lit8 v11, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-ne p1, v9, :cond_2

    .line 1369
    new-instance v4, Lgnu/expr/ReferenceExp;

    move-object v5, v2

    check-cast v5, Ljava/lang/Object;

    invoke-direct {v4, v2}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;)V

    .line 1370
    invoke-virtual {v4, p0}, Lgnu/expr/Expression;->setLine(Lgnu/expr/Compilation;)V

    .line 1371
    invoke-virtual {p0, v1}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Expression;)V

    .line 1372
    iget-object v1, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 1373
    iget-object v8, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    move-object v10, p0

    invoke-static/range {v5 .. v10}, Lkawa/standard/require;->importDefinitions(Ljava/lang/String;Lgnu/expr/ModuleInfo;Lgnu/mapping/Procedure;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lgnu/expr/Compilation;)Z

    .line 1375
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1376
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v1, :cond_1

    .line 1379
    iget-object v3, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    sub-int v5, v3, v2

    .line 1382
    iget-object v6, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    sub-int v7, v1, v2

    invoke-static {v6, v2, v7}, Lkawa/lang/Translator;->vectorReverse(Ljava/util/Vector;II)V

    .line 1383
    iget-object v6, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    sub-int/2addr v3, v1

    invoke-static {v6, v1, v3}, Lkawa/lang/Translator;->vectorReverse(Ljava/util/Vector;II)V

    .line 1384
    iget-object v1, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-static {v1, v2, v5}, Lkawa/lang/Translator;->vectorReverse(Ljava/util/Vector;II)V

    .line 1386
    :cond_1
    invoke-virtual {p0, v4}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Expression;)V

    :cond_2
    move v1, v11

    goto :goto_0

    .line 1389
    :cond_3
    iput-object v2, p0, Lkawa/lang/Translator;->pendingImports:Ljava/util/Stack;

    .line 1391
    invoke-virtual {p0}, Lkawa/lang/Translator;->processAccesses()V

    .line 1393
    invoke-virtual {p0, p1}, Lkawa/lang/Translator;->setModule(Lgnu/expr/ModuleExp;)V

    .line 1394
    invoke-static {p0}, Lgnu/expr/Compilation;->setSaveCurrent(Lgnu/expr/Compilation;)Lgnu/expr/Compilation;

    move-result-object v0

    .line 1397
    :try_start_0
    iget v1, p0, Lkawa/lang/Translator;->firstForm:I

    invoke-virtual {p0, v1}, Lkawa/lang/Translator;->popForms(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lkawa/lang/Translator;->rewriteInBody(Ljava/lang/Object;)V

    .line 1398
    iget v1, p0, Lkawa/lang/Translator;->firstForm:I

    invoke-direct {p0, v1, p1}, Lkawa/lang/Translator;->makeBody(ILgnu/expr/ScopeExp;)Lgnu/expr/Expression;

    move-result-object v1

    iput-object v1, p1, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    .line 1400
    iget-boolean v1, p0, Lkawa/lang/Translator;->immediate:Z

    if-nez v1, :cond_4

    .line 1401
    iget-object v1, p0, Lkawa/lang/Translator;->lexical:Lgnu/expr/NameLookup;

    invoke-virtual {v1, p1}, Lgnu/expr/NameLookup;->pop(Lgnu/expr/ScopeExp;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1405
    :cond_4
    invoke-static {v0}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    throw p1
.end method

.method public rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;
    .locals 1

    const/4 v0, 0x0

    .line 561
    invoke-virtual {p0, p1, v0}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;Z)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method

.method public rewrite(Ljava/lang/Object;Z)Lgnu/expr/Expression;
    .locals 10

    .line 592
    instance-of v0, p1, Lkawa/lang/SyntaxForm;

    if-eqz v0, :cond_0

    .line 594
    check-cast p1, Lkawa/lang/SyntaxForm;

    .line 595
    iget-object v0, p0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    .line 598
    :try_start_0
    invoke-interface {p1}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v1

    invoke-virtual {p0, v1}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 599
    invoke-interface {p1}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;Z)Lgnu/expr/Expression;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 604
    invoke-virtual {p0, v0}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    throw p1

    .line 607
    :cond_0
    instance-of v0, p1, Lgnu/lists/PairWithPosition;

    if-eqz v0, :cond_1

    .line 608
    move-object v0, p1

    check-cast v0, Lgnu/lists/PairWithPosition;

    invoke-virtual {p0, p1, p2, v0}, Lkawa/lang/Translator;->rewrite_with_position(Ljava/lang/Object;ZLgnu/lists/PairWithPosition;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 609
    :cond_1
    instance-of v0, p1, Lgnu/lists/Pair;

    if-eqz v0, :cond_2

    .line 610
    check-cast p1, Lgnu/lists/Pair;

    invoke-virtual {p0, p1, p2}, Lkawa/lang/Translator;->rewrite_pair(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 611
    :cond_2
    instance-of v0, p1, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_20

    invoke-virtual {p0, p1}, Lkawa/lang/Translator;->selfEvaluatingSymbol(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 613
    iget-object v1, p0, Lkawa/lang/Translator;->lexical:Lgnu/expr/NameLookup;

    invoke-virtual {v1, p1, p2}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;Z)Lgnu/expr/Declaration;

    move-result-object v1

    .line 619
    iget-object v2, p0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    if-nez v1, :cond_3

    const/4 v3, -0x1

    goto :goto_0

    .line 620
    :cond_3
    iget-object v3, v1, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    invoke-static {v3}, Lgnu/expr/ScopeExp;->nesting(Lgnu/expr/ScopeExp;)I

    move-result v3

    :goto_0
    const/4 v4, 0x0

    if-eqz v0, :cond_4

    .line 622
    move-object v0, p1

    check-cast v0, Lgnu/mapping/Symbol;

    invoke-virtual {v0}, Lgnu/mapping/Symbol;->hasEmptyNamespace()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 623
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v4

    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_c

    .line 631
    instance-of v5, v2, Lgnu/expr/LambdaExp;

    if-eqz v5, :cond_b

    iget-object v5, v2, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    instance-of v5, v5, Lgnu/expr/ClassExp;

    if-eqz v5, :cond_b

    move-object v5, v2

    check-cast v5, Lgnu/expr/LambdaExp;

    invoke-virtual {v5}, Lgnu/expr/LambdaExp;->isClassMethod()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 635
    iget-object v6, v2, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    invoke-static {v6}, Lgnu/expr/ScopeExp;->nesting(Lgnu/expr/ScopeExp;)I

    move-result v6

    if-lt v3, v6, :cond_5

    goto :goto_7

    .line 638
    :cond_5
    iget-object v6, v2, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    check-cast v6, Lgnu/expr/ClassExp;

    .line 639
    invoke-virtual {v6}, Lgnu/expr/ClassExp;->getClassType()Lgnu/bytecode/ClassType;

    move-result-object v7

    .line 640
    invoke-static {v7, v0, v7}, Lgnu/kawa/reflect/SlotGet;->lookupMember(Lgnu/bytecode/ObjectType;Ljava/lang/String;Lgnu/bytecode/ClassType;)Lgnu/bytecode/Member;

    move-result-object v8

    .line 641
    iget-object v9, v6, Lgnu/expr/ClassExp;->clinitMethod:Lgnu/expr/LambdaExp;

    if-eq v5, v9, :cond_7

    iget-object v6, v6, Lgnu/expr/ClassExp;->initMethod:Lgnu/expr/LambdaExp;

    if-eq v5, v6, :cond_6

    iget-object v6, v5, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    invoke-virtual {v6}, Lgnu/expr/Declaration;->isStatic()Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_2

    :cond_6
    const/4 v6, 0x0

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v6, 0x1

    :goto_3
    if-nez v8, :cond_9

    if-eqz v6, :cond_8

    const/16 v8, 0x53

    goto :goto_4

    :cond_8
    const/16 v8, 0x56

    .line 648
    :goto_4
    iget-object v9, p0, Lkawa/lang/Translator;->language:Lgnu/expr/Language;

    invoke-static {v7, v0, v8, v7, v9}, Lgnu/kawa/reflect/ClassMethods;->getMethods(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/bytecode/ClassType;Lgnu/expr/Language;)[Lgnu/expr/PrimProcedure;

    move-result-object v7

    .line 651
    array-length v7, v7

    if-nez v7, :cond_9

    goto :goto_6

    :cond_9
    if-eqz v6, :cond_a

    .line 657
    new-instance p1, Lgnu/expr/ReferenceExp;

    iget-object p2, v5, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    check-cast p2, Lgnu/expr/ClassExp;

    iget-object p2, p2, Lgnu/expr/ClassExp;->nameDecl:Lgnu/expr/Declaration;

    invoke-direct {p1, p2}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    goto :goto_5

    .line 659
    :cond_a
    new-instance p1, Lgnu/expr/ThisExp;

    invoke-virtual {v5}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object p2

    invoke-direct {p1, p2}, Lgnu/expr/ThisExp;-><init>(Lgnu/expr/Declaration;)V

    .line 660
    :goto_5
    invoke-static {v0}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object p2

    invoke-static {p1, p2}, Lgnu/kawa/functions/CompileNamedPart;->makeExp(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 629
    :cond_b
    :goto_6
    iget-object v2, v2, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    goto :goto_1

    :cond_c
    :goto_7
    if-eqz v1, :cond_e

    .line 668
    invoke-virtual {v1}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object p1

    .line 670
    invoke-static {v1}, Lkawa/lang/Translator;->getOriginalRef(Lgnu/expr/Declaration;)Lgnu/expr/ReferenceExp;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 673
    invoke-virtual {v0}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v1

    if-nez v1, :cond_d

    .line 676
    invoke-virtual {v0}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object p1

    goto :goto_8

    :cond_d
    move-object v0, p1

    move-object p1, v4

    goto :goto_9

    :cond_e
    :goto_8
    move-object v0, p1

    .line 685
    :goto_9
    move-object v2, p1

    check-cast v2, Lgnu/mapping/Symbol;

    .line 686
    invoke-virtual {p0}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v3

    invoke-virtual {v3}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v3

    if-eqz v1, :cond_12

    .line 689
    iget-object p1, p0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    instance-of p1, p1, Lkawa/lang/TemplateScope;

    if-eqz p1, :cond_f

    invoke-virtual {v1}, Lgnu/expr/Declaration;->needsContext()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 690
    iget-object p1, p0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    check-cast p1, Lkawa/lang/TemplateScope;

    iget-object v4, p1, Lkawa/lang/TemplateScope;->macroContext:Lgnu/expr/Declaration;

    goto/16 :goto_11

    :cond_f
    const-wide/32 v5, 0x100000

    .line 691
    invoke-virtual {v1, v5, v6}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result p1

    if-eqz p1, :cond_1c

    invoke-virtual {v1}, Lgnu/expr/Declaration;->isStatic()Z

    move-result p1

    if-nez p1, :cond_1c

    .line 694
    invoke-virtual {p0}, Lkawa/lang/Translator;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object p1

    :goto_a
    if-eqz p1, :cond_11

    .line 699
    iget-object v2, p1, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    iget-object v4, v1, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    if-ne v2, v4, :cond_10

    .line 703
    invoke-virtual {p1}, Lgnu/expr/ScopeExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v4

    goto/16 :goto_11

    .line 701
    :cond_10
    iget-object p1, p1, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    goto :goto_a

    .line 698
    :cond_11
    new-instance p1, Ljava/lang/Error;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "internal error: missing "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    .line 708
    :cond_12
    iget-object v5, p0, Lkawa/lang/Translator;->env:Lgnu/mapping/Environment;

    if-eqz p2, :cond_13

    if-eqz v3, :cond_13

    sget-object v6, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    goto :goto_b

    :cond_13
    move-object v6, v4

    :goto_b
    invoke-virtual {v5, v2, v6}, Lgnu/mapping/Environment;->lookup(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/Location;

    move-result-object v5

    if-eqz v5, :cond_14

    .line 713
    invoke-virtual {v5}, Lgnu/mapping/Location;->getBase()Lgnu/mapping/Location;

    move-result-object v5

    .line 714
    :cond_14
    instance-of v6, v5, Lgnu/kawa/reflect/FieldLocation;

    if-eqz v6, :cond_1a

    .line 716
    check-cast v5, Lgnu/kawa/reflect/FieldLocation;

    .line 719
    :try_start_1
    invoke-virtual {v5}, Lgnu/kawa/reflect/FieldLocation;->getDeclaration()Lgnu/expr/Declaration;

    move-result-object v1

    .line 720
    invoke-virtual {p0, v4}, Lkawa/lang/Translator;->inlineOk(Lgnu/expr/Expression;)Z

    move-result v2

    if-nez v2, :cond_15

    sget-object v2, Lkawa/lang/Translator;->getNamedPartDecl:Lgnu/expr/Declaration;

    if-eq v1, v2, :cond_15

    const-string v2, "objectSyntax"

    invoke-virtual {v5}, Lgnu/kawa/reflect/FieldLocation;->getMemberName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    const-string v2, "kawa.standard.object"

    invoke-virtual {v5}, Lgnu/kawa/reflect/FieldLocation;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v6

    invoke-virtual {v6}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    goto :goto_e

    .line 729
    :cond_15
    iget-boolean v2, p0, Lkawa/lang/Translator;->immediate:Z

    if-eqz v2, :cond_17

    .line 731
    invoke-virtual {v1}, Lgnu/expr/Declaration;->isStatic()Z

    move-result v2

    if-nez v2, :cond_16

    .line 733
    new-instance v2, Lgnu/expr/Declaration;

    const-string v6, "(module-instance)"

    invoke-direct {v2, v6}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 734
    :try_start_2
    new-instance v6, Lgnu/expr/QuoteExp;

    invoke-virtual {v5}, Lgnu/kawa/reflect/FieldLocation;->getInstance()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v6, v5}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v6}, Lgnu/expr/Declaration;->setValue(Lgnu/expr/Expression;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_d

    :catchall_1
    move-exception v1

    goto :goto_f

    :cond_16
    :goto_c
    move-object v2, v4

    :goto_d
    move-object v4, v1

    goto :goto_10

    .line 737
    :cond_17
    :try_start_3
    invoke-virtual {v1}, Lgnu/expr/Declaration;->isStatic()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 742
    invoke-virtual {v5}, Lgnu/kawa/reflect/FieldLocation;->getRClass()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_18

    .line 744
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    instance-of v5, v2, Lgnu/bytecode/ZipLoader;

    if-nez v5, :cond_18

    instance-of p1, v2, Lgnu/bytecode/ArrayClassLoader;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz p1, :cond_16

    :cond_18
    move-object v1, v4

    goto :goto_c

    :cond_19
    :goto_e
    move-object v2, v4

    goto :goto_10

    :catchall_2
    move-exception v1

    move-object v2, v4

    :goto_f
    const/16 v5, 0x65

    .line 755
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception loading \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' - "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v5, p1}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    :goto_10
    move-object v1, v4

    move-object v4, v2

    goto :goto_11

    :cond_1a
    if-eqz v5, :cond_1b

    .line 761
    invoke-virtual {v5}, Lgnu/mapping/Location;->isBound()Z

    move-result p1

    if-nez p1, :cond_1c

    .line 763
    :cond_1b
    invoke-virtual {p0}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object p1

    check-cast p1, Lgnu/kawa/lispexpr/LispLanguage;

    invoke-virtual {p1, v2, p0}, Lgnu/kawa/lispexpr/LispLanguage;->checkDefaultBinding(Lgnu/mapping/Symbol;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object p1

    if-eqz p1, :cond_1c

    return-object p1

    :cond_1c
    :goto_11
    if-eqz v1, :cond_1e

    if-nez p2, :cond_1d

    .line 783
    invoke-virtual {v1}, Lgnu/expr/Declaration;->getConstantValue()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lkawa/standard/object;

    if-eqz p1, :cond_1d

    .line 785
    const-class p1, Ljava/lang/Object;

    invoke-static {p1}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object p1

    return-object p1

    .line 787
    :cond_1d
    invoke-virtual {v1}, Lgnu/expr/Declaration;->getContext()Lgnu/expr/ScopeExp;

    move-result-object p1

    instance-of p1, p1, Lkawa/lang/PatternScope;

    if-eqz p1, :cond_1e

    .line 788
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "reference to pattern variable "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " outside syntax template"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 791
    :cond_1e
    new-instance p1, Lgnu/expr/ReferenceExp;

    invoke-direct {p1, v0, v1}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;Lgnu/expr/Declaration;)V

    .line 792
    invoke-virtual {p1, v4}, Lgnu/expr/ReferenceExp;->setContextDecl(Lgnu/expr/Declaration;)V

    .line 793
    invoke-virtual {p1, p0}, Lgnu/expr/ReferenceExp;->setLine(Lgnu/expr/Compilation;)V

    if-eqz p2, :cond_1f

    if-eqz v3, :cond_1f

    const/16 p2, 0x8

    .line 795
    invoke-virtual {p1, p2}, Lgnu/expr/ReferenceExp;->setFlag(I)V

    :cond_1f
    return-object p1

    .line 798
    :cond_20
    instance-of v0, p1, Lgnu/expr/LangExp;

    if-eqz v0, :cond_21

    .line 799
    check-cast p1, Lgnu/expr/LangExp;

    invoke-virtual {p1}, Lgnu/expr/LangExp;->getLangValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;Z)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 800
    :cond_21
    instance-of p2, p1, Lgnu/expr/Expression;

    if-eqz p2, :cond_22

    .line 801
    check-cast p1, Lgnu/expr/Expression;

    return-object p1

    .line 802
    :cond_22
    sget-object p2, Lgnu/expr/Special;->abstractSpecial:Lgnu/expr/Special;

    if-ne p1, p2, :cond_23

    .line 803
    sget-object p1, Lgnu/expr/QuoteExp;->abstractExp:Lgnu/expr/QuoteExp;

    return-object p1

    .line 805
    :cond_23
    invoke-static {p1, p0}, Lkawa/lang/Quote;->quote(Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p0}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;Lgnu/text/SourceLocator;)Lgnu/expr/QuoteExp;

    move-result-object p1

    return-object p1
.end method

.method public rewriteInBody(Ljava/lang/Object;)V
    .locals 2

    .line 532
    instance-of v0, p1, Lkawa/lang/SyntaxForm;

    if-eqz v0, :cond_0

    .line 534
    check-cast p1, Lkawa/lang/SyntaxForm;

    .line 535
    iget-object v0, p0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    .line 538
    :try_start_0
    invoke-interface {p1}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v1

    invoke-virtual {p0, v1}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 539
    invoke-interface {p1}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkawa/lang/Translator;->rewriteInBody(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 543
    invoke-virtual {p0, v0}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    throw p1

    .line 546
    :cond_0
    instance-of v0, p1, Lgnu/mapping/Values;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 548
    check-cast p1, Lgnu/mapping/Values;

    invoke-virtual {p1}, Lgnu/mapping/Values;->getValues()[Ljava/lang/Object;

    move-result-object p1

    .line 549
    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_2

    .line 550
    aget-object v0, p1, v1

    invoke-virtual {p0, v0}, Lkawa/lang/Translator;->rewriteInBody(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 553
    :cond_1
    iget-object v0, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {p0, p1, v1}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;Z)Lgnu/expr/Expression;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public rewrite_body(Ljava/lang/Object;)Lgnu/expr/Expression;
    .locals 8

    .line 1182
    invoke-virtual {p0, p1}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1183
    new-instance v1, Lgnu/expr/LetExp;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    .line 1184
    iget-object v3, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    .line 1185
    iget-object v4, p0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    iput-object v4, v1, Lgnu/expr/LetExp;->outer:Lgnu/expr/ScopeExp;

    .line 1186
    iput-object v1, p0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    const/4 v4, 0x1

    .line 1189
    :try_start_0
    invoke-virtual {p0, p1, v1, v4}, Lkawa/lang/Translator;->scanBody(Ljava/lang/Object;Lgnu/expr/ScopeExp;Z)Lgnu/lists/LList;

    move-result-object p1

    .line 1190
    invoke-virtual {p1}, Lgnu/lists/LList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1191
    iget-object v4, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    const-string v5, "body with no expressions"

    invoke-virtual {p0, v5}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 1192
    :cond_0
    invoke-virtual {v1}, Lgnu/expr/LetExp;->countNonDynamicDecls()I

    move-result v4

    if-eqz v4, :cond_2

    .line 1195
    new-array v5, v4, [Lgnu/expr/Expression;

    move v6, v4

    :goto_0
    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_1

    .line 1197
    sget-object v7, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    aput-object v7, v5, v6

    goto :goto_0

    .line 1198
    :cond_1
    iput-object v5, v1, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    .line 1200
    :cond_2
    invoke-direct {p0, p1}, Lkawa/lang/Translator;->rewriteBody(Lgnu/lists/LList;)V

    .line 1201
    invoke-direct {p0, v3, v2}, Lkawa/lang/Translator;->makeBody(ILgnu/expr/ScopeExp;)Lgnu/expr/Expression;

    move-result-object p1

    .line 1202
    invoke-virtual {p0, p1}, Lkawa/lang/Translator;->setLineOf(Lgnu/expr/Expression;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_3

    .line 1211
    invoke-virtual {p0, v1}, Lkawa/lang/Translator;->pop(Lgnu/expr/ScopeExp;)V

    .line 1212
    invoke-virtual {p0, v0}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    return-object p1

    .line 1205
    :cond_3
    :try_start_1
    iput-object p1, v1, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    .line 1206
    invoke-virtual {p0, v1}, Lkawa/lang/Translator;->setLineOf(Lgnu/expr/Expression;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1211
    invoke-virtual {p0, v1}, Lkawa/lang/Translator;->pop(Lgnu/expr/ScopeExp;)V

    .line 1212
    invoke-virtual {p0, v0}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    return-object v1

    :catchall_0
    move-exception p1

    .line 1211
    invoke-virtual {p0, v1}, Lkawa/lang/Translator;->pop(Lgnu/expr/ScopeExp;)V

    .line 1212
    invoke-virtual {p0, v0}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    throw p1
.end method

.method public final rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 87
    invoke-interface {p2}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v1

    iget-object v2, p0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lkawa/lang/SyntaxForm;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    iget-object v1, p0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    .line 93
    :try_start_0
    invoke-interface {p2}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object p2

    invoke-virtual {p0, p2}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 94
    invoke-virtual {p0, p1, v0}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    invoke-virtual {p0, v1}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v1}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    throw p1

    .line 89
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, v0}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final rewrite_car(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;
    .locals 2

    .line 104
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    .line 105
    instance-of v1, p1, Lgnu/lists/PairWithPosition;

    if-eqz v1, :cond_0

    .line 106
    check-cast p1, Lgnu/lists/PairWithPosition;

    invoke-virtual {p0, v0, p2, p1}, Lkawa/lang/Translator;->rewrite_with_position(Ljava/lang/Object;ZLgnu/lists/PairWithPosition;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 108
    :cond_0
    invoke-virtual {p0, v0, p2}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;Z)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method

.method public rewrite_pair(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;
    .locals 9

    const/4 v0, 0x1

    .line 287
    invoke-virtual {p0, p1, v0}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;

    move-result-object v1

    .line 289
    instance-of v2, v1, Lgnu/expr/QuoteExp;

    if-eqz v2, :cond_0

    .line 291
    invoke-virtual {v1}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v2

    .line 292
    instance-of v3, v2, Lkawa/lang/Syntax;

    if-eqz v3, :cond_0

    .line 293
    check-cast v2, Lkawa/lang/Syntax;

    invoke-virtual {p0, v2, p1}, Lkawa/lang/Translator;->apply_rewrite(Lkawa/lang/Syntax;Lgnu/lists/Pair;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 296
    :cond_0
    instance-of v2, v1, Lgnu/expr/ReferenceExp;

    if-eqz v2, :cond_6

    .line 298
    move-object v3, v1

    check-cast v3, Lgnu/expr/ReferenceExp;

    .line 299
    invoke-virtual {v3}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v4

    if-nez v4, :cond_4

    .line 302
    invoke-virtual {v3}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object v4

    .line 305
    instance-of v5, v4, Lgnu/mapping/Symbol;

    if-eqz v5, :cond_1

    invoke-virtual {p0, v4}, Lkawa/lang/Translator;->selfEvaluatingSymbol(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 307
    check-cast v4, Lgnu/mapping/Symbol;

    .line 308
    invoke-virtual {v4}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    goto :goto_0

    .line 312
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 313
    iget-object v5, p0, Lkawa/lang/Translator;->env:Lgnu/mapping/Environment;

    invoke-virtual {v5, v4}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v4

    .line 315
    :goto_0
    iget-object v5, p0, Lkawa/lang/Translator;->env:Lgnu/mapping/Environment;

    invoke-virtual {p0}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v6

    invoke-virtual {v6}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    sget-object v6, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    move-object v6, v7

    :goto_1
    invoke-virtual {v5, v4, v6, v7}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 320
    instance-of v5, v4, Lkawa/lang/Syntax;

    if-eqz v5, :cond_3

    .line 321
    check-cast v4, Lkawa/lang/Syntax;

    invoke-virtual {p0, v4, p1}, Lkawa/lang/Translator;->apply_rewrite(Lkawa/lang/Syntax;Lgnu/lists/Pair;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 322
    :cond_3
    instance-of v5, v4, Lkawa/lang/AutoloadProcedure;

    if-eqz v5, :cond_5

    .line 326
    :try_start_0
    check-cast v4, Lkawa/lang/AutoloadProcedure;

    invoke-virtual {v4}, Lkawa/lang/AutoloadProcedure;->getLoaded()Lgnu/mapping/Procedure;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    goto :goto_2

    .line 336
    :cond_4
    iget-object v5, p0, Lkawa/lang/Translator;->macroContext:Lgnu/expr/Declaration;

    .line 337
    invoke-virtual {p0, v4}, Lkawa/lang/Translator;->check_if_Syntax(Lgnu/expr/Declaration;)Lkawa/lang/Syntax;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 340
    invoke-virtual {p0, v4, p1}, Lkawa/lang/Translator;->apply_rewrite(Lkawa/lang/Syntax;Lgnu/lists/Pair;)Lgnu/expr/Expression;

    move-result-object p1

    .line 341
    iput-object v5, p0, Lkawa/lang/Translator;->macroContext:Lgnu/expr/Declaration;

    return-object p1

    .line 346
    :cond_5
    :goto_2
    invoke-virtual {v3, v0}, Lgnu/expr/ReferenceExp;->setProcedureName(Z)V

    .line 347
    invoke-virtual {p0}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v3

    invoke-virtual {v3}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v3, 0x8

    .line 348
    invoke-virtual {v1, v3}, Lgnu/expr/Expression;->setFlag(I)V

    .line 351
    :cond_6
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    .line 352
    invoke-static {v3}, Lkawa/lang/Translator;->listLength(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_7

    .line 355
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "circular list is not allowed after "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    :cond_7
    if-gez v4, :cond_8

    .line 357
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dotted list ["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "] is not allowed after "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 360
    :cond_8
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    .line 362
    iget-object v5, p0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v4, :cond_a

    .line 365
    instance-of v8, v3, Lkawa/lang/SyntaxForm;

    if-eqz v8, :cond_9

    .line 367
    check-cast v3, Lkawa/lang/SyntaxForm;

    .line 368
    invoke-interface {v3}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v8

    .line 369
    invoke-interface {v3}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v3

    invoke-virtual {p0, v3}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    move-object v3, v8

    .line 371
    :cond_9
    check-cast v3, Lgnu/lists/Pair;

    .line 372
    invoke-virtual {p0, v3, v6}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    .line 396
    invoke-virtual {p1, v8}, Ljava/util/Stack;->addElement(Ljava/lang/Object;)V

    .line 397
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    goto :goto_3

    .line 399
    :cond_a
    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result v3

    new-array v3, v3, [Lgnu/expr/Expression;

    .line 400
    invoke-virtual {p1, v3}, Ljava/util/Stack;->copyInto([Ljava/lang/Object;)V

    .line 402
    iget-object p1, p0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    if-eq v5, p1, :cond_b

    .line 403
    invoke-virtual {p0, v5}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    :cond_b
    if-eqz v2, :cond_d

    .line 405
    move-object p1, v1

    check-cast p1, Lgnu/expr/ReferenceExp;

    invoke-virtual {p1}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object p1

    sget-object v2, Lkawa/lang/Translator;->getNamedPartDecl:Lgnu/expr/Declaration;

    if-ne p1, v2, :cond_d

    .line 408
    aget-object p1, v3, v6

    .line 409
    aget-object v0, v3, v0

    .line 410
    invoke-virtual {p0, p1, v0}, Lkawa/lang/Translator;->namespaceResolve(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/mapping/Symbol;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 412
    invoke-virtual {p0, v1, p2}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;Z)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 414
    :cond_c
    invoke-static {p1, v0}, Lgnu/kawa/functions/CompileNamedPart;->makeExp(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 416
    :cond_d
    invoke-virtual {p0}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object p1

    check-cast p1, Lgnu/kawa/lispexpr/LispLanguage;

    invoke-virtual {p1, v1, v3}, Lgnu/kawa/lispexpr/LispLanguage;->makeApply(Lgnu/expr/Expression;[Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method

.method public rewrite_with_position(Ljava/lang/Object;ZLgnu/lists/PairWithPosition;)Lgnu/expr/Expression;
    .locals 1

    .line 917
    invoke-virtual {p0, p3}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne p1, p3, :cond_0

    .line 922
    :try_start_0
    invoke-virtual {p0, p3, p2}, Lkawa/lang/Translator;->rewrite_pair(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;

    move-result-object p1

    goto :goto_0

    .line 924
    :cond_0
    invoke-virtual {p0, p1, p2}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;Z)Lgnu/expr/Expression;

    move-result-object p1

    .line 925
    :goto_0
    invoke-virtual {p0, p1}, Lkawa/lang/Translator;->setLineOf(Lgnu/expr/Expression;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 929
    invoke-virtual {p0, v0}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    throw p1
.end method

.method public scanBody(Ljava/lang/Object;Lgnu/expr/ScopeExp;Z)Lgnu/lists/LList;
    .locals 8

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 1097
    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    move-object v2, v0

    .line 1099
    :goto_1
    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq p1, v3, :cond_a

    .line 1101
    instance-of v3, p1, Lkawa/lang/SyntaxForm;

    if-eqz v3, :cond_3

    .line 1103
    check-cast p1, Lkawa/lang/SyntaxForm;

    .line 1104
    iget-object v3, p0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    .line 1107
    :try_start_0
    invoke-interface {p1}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v4

    invoke-virtual {p0, v4}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 1108
    iget-object v4, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    .line 1109
    invoke-interface {p1}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5, p2, p3}, Lkawa/lang/Translator;->scanBody(Ljava/lang/Object;Lgnu/expr/ScopeExp;Z)Lgnu/lists/LList;

    move-result-object p2

    if-eqz p3, :cond_2

    .line 1112
    invoke-static {p2, p1}, Lkawa/lang/SyntaxForms;->fromDatumIfNeeded(Ljava/lang/Object;Lkawa/lang/SyntaxForm;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/lists/LList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 1123
    invoke-virtual {p0, v3}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    return-object p1

    .line 1115
    :cond_1
    :try_start_1
    invoke-virtual {v2, p1}, Lgnu/lists/Pair;->setCdrBackdoor(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1123
    invoke-virtual {p0, v3}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    return-object v1

    .line 1118
    :cond_2
    :try_start_2
    iget-object p2, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {p0, v4}, Lkawa/lang/Translator;->popForms(I)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3, p1}, Lkawa/lang/Translator;->wrapSyntax(Ljava/lang/Object;Lkawa/lang/SyntaxForm;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1123
    invoke-virtual {p0, v3}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    return-object v0

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v3}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    throw p1

    .line 1126
    :cond_3
    instance-of v3, p1, Lgnu/lists/Pair;

    if-eqz v3, :cond_9

    .line 1128
    check-cast p1, Lgnu/lists/Pair;

    .line 1129
    iget-object v3, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    .line 1130
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4, p2}, Lkawa/lang/Translator;->scanForm(Ljava/lang/Object;Lgnu/expr/ScopeExp;)V

    .line 1131
    invoke-virtual {p0}, Lkawa/lang/Translator;->getState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    .line 1136
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object p2

    iget-object p3, p0, Lkawa/lang/Translator;->pendingForm:Ljava/lang/Object;

    if-eq p2, p3, :cond_4

    .line 1137
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p3, p2}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p1

    .line 1138
    :cond_4
    new-instance p2, Lgnu/lists/Pair;

    sget-object p3, Lkawa/standard/begin;->begin:Lkawa/standard/begin;

    invoke-direct {p2, p3, p1}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, Lkawa/lang/Translator;->pendingForm:Ljava/lang/Object;

    .line 1139
    sget-object p1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    return-object p1

    .line 1141
    :cond_5
    iget-object v4, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    if-eqz p3, :cond_8

    move v5, v3

    :goto_2
    if-ge v5, v4, :cond_7

    .line 1146
    iget-object v6, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v6, v5}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {p1, v6, v7}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v6

    if-nez v2, :cond_6

    move-object v1, v6

    goto :goto_3

    .line 1151
    :cond_6
    invoke-virtual {v2, v6}, Lgnu/lists/Pair;->setCdrBackdoor(Ljava/lang/Object;)V

    :goto_3
    add-int/lit8 v5, v5, 0x1

    move-object v2, v6

    goto :goto_2

    .line 1154
    :cond_7
    iget-object v4, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v4, v3}, Ljava/util/Stack;->setSize(I)V

    .line 1156
    :cond_8
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_1

    .line 1160
    :cond_9
    iget-object p1, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    const-string p2, "body is not a proper list"

    invoke-virtual {p0, p2}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    :cond_a
    return-object v1
.end method

.method public scanForm(Ljava/lang/Object;Lgnu/expr/ScopeExp;)V
    .locals 10

    .line 963
    instance-of v0, p1, Lkawa/lang/SyntaxForm;

    if-eqz v0, :cond_0

    .line 965
    check-cast p1, Lkawa/lang/SyntaxForm;

    .line 966
    invoke-virtual {p0}, Lkawa/lang/Translator;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v0

    .line 969
    :try_start_0
    invoke-interface {p1}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v1

    invoke-virtual {p0, v1}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 970
    iget-object v1, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    .line 971
    invoke-interface {p1}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lkawa/lang/Translator;->scanForm(Ljava/lang/Object;Lgnu/expr/ScopeExp;)V

    .line 972
    iget-object p2, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {p0, v1}, Lkawa/lang/Translator;->popForms(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Lkawa/lang/Translator;->wrapSyntax(Ljava/lang/Object;Lkawa/lang/SyntaxForm;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 977
    invoke-virtual {p0, v0}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    throw p1

    .line 980
    :cond_0
    instance-of v0, p1, Lgnu/mapping/Values;

    if-eqz v0, :cond_3

    .line 982
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p1, v0, :cond_1

    .line 983
    sget-object p1, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    goto :goto_1

    .line 986
    :cond_1
    check-cast p1, Lgnu/mapping/Values;

    invoke-virtual {p1}, Lgnu/mapping/Values;->getValues()[Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    .line 987
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 988
    aget-object v1, p1, v0

    invoke-virtual {p0, v1, p2}, Lkawa/lang/Translator;->scanForm(Ljava/lang/Object;Lgnu/expr/ScopeExp;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 992
    :cond_3
    :goto_1
    instance-of v0, p1, Lgnu/lists/Pair;

    if-eqz v0, :cond_d

    .line 994
    move-object v0, p1

    check-cast v0, Lgnu/lists/Pair;

    .line 995
    iget-object v1, p0, Lkawa/lang/Translator;->macroContext:Lgnu/expr/Declaration;

    .line 997
    iget-object v2, p0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    .line 998
    invoke-virtual {p0, p1}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 999
    instance-of v4, p1, Lgnu/text/SourceLocator;

    if-eqz v4, :cond_4

    invoke-virtual {p2}, Lgnu/expr/ScopeExp;->getLineNumber()I

    move-result v4

    if-gez v4, :cond_4

    .line 1000
    move-object v4, p1

    check-cast v4, Lgnu/text/SourceLocator;

    invoke-virtual {p2, v4}, Lgnu/expr/ScopeExp;->setLocation(Lgnu/text/SourceLocator;)V

    .line 1003
    :cond_4
    :try_start_1
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v4

    .line 1004
    instance-of v5, v4, Lkawa/lang/SyntaxForm;

    if-eqz v5, :cond_5

    .line 1006
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkawa/lang/SyntaxForm;

    .line 1007
    invoke-interface {v4}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v5

    invoke-virtual {p0, v5}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 1008
    invoke-interface {v4}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v4

    .line 1011
    :cond_5
    instance-of v5, v4, Lgnu/lists/Pair;

    const/4 v6, 0x0

    if-eqz v5, :cond_7

    move-object v5, v4

    check-cast v5, Lgnu/lists/Pair;

    invoke-virtual {v5}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lgnu/kawa/lispexpr/LispLanguage;->lookup_sym:Lgnu/mapping/Symbol;

    if-ne v7, v8, :cond_7

    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lgnu/lists/Pair;

    if-eqz v7, :cond_7

    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/lists/Pair;

    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lgnu/lists/Pair;

    if-eqz v7, :cond_7

    .line 1016
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v4

    .line 1017
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/lists/Pair;

    invoke-virtual {v5}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v5

    .line 1018
    invoke-virtual {v4}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v7

    .line 1019
    invoke-virtual {v5}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v8

    .line 1020
    instance-of v9, v7, Ljava/lang/Class;

    if-eqz v9, :cond_6

    instance-of v9, v8, Lgnu/mapping/Symbol;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v9, :cond_6

    .line 1024
    :try_start_2
    check-cast v8, Lgnu/mapping/Symbol;

    invoke-static {v7, v8}, Lgnu/kawa/functions/GetNamedPart;->getNamedPart(Ljava/lang/Object;Lgnu/mapping/Symbol;)Ljava/lang/Object;

    move-result-object v4

    .line 1025
    instance-of v5, v4, Lkawa/lang/Syntax;

    if-eqz v5, :cond_7

    .line 1026
    move-object v5, v4

    check-cast v5, Lkawa/lang/Syntax;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v6, v5

    goto :goto_2

    :catchall_1
    move-object v4, v6

    goto :goto_2

    .line 1034
    :cond_6
    :try_start_3
    invoke-virtual {p0, v4, v5}, Lkawa/lang/Translator;->namespaceResolve(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/mapping/Symbol;

    move-result-object v4

    .line 1037
    :cond_7
    :goto_2
    instance-of v5, v4, Lgnu/mapping/Symbol;

    if-eqz v5, :cond_9

    invoke-virtual {p0, v4}, Lkawa/lang/Translator;->selfEvaluatingSymbol(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    const/4 v5, 0x1

    .line 1039
    invoke-virtual {p0, v4, v5}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;Z)Lgnu/expr/Expression;

    move-result-object v7

    .line 1040
    instance-of v8, v7, Lgnu/expr/ReferenceExp;

    if-eqz v8, :cond_a

    .line 1042
    check-cast v7, Lgnu/expr/ReferenceExp;

    invoke-virtual {v7}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 1044
    invoke-virtual {p0, v7}, Lkawa/lang/Translator;->check_if_Syntax(Lgnu/expr/Declaration;)Lkawa/lang/Syntax;

    move-result-object v4

    :goto_3
    move-object v6, v4

    goto :goto_4

    .line 1047
    :cond_8
    invoke-virtual {p0, v4, v5}, Lkawa/lang/Translator;->resolve(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v4

    .line 1048
    instance-of v5, v4, Lkawa/lang/Syntax;

    if-eqz v5, :cond_a

    .line 1049
    check-cast v4, Lkawa/lang/Syntax;

    goto :goto_3

    .line 1056
    :cond_9
    sget-object v5, Lkawa/standard/begin;->begin:Lkawa/standard/begin;

    if-ne v4, v5, :cond_a

    .line 1057
    move-object v6, v4

    check-cast v6, Lkawa/lang/Syntax;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1061
    :cond_a
    :goto_4
    iget-object v4, p0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    if-eq v2, v4, :cond_b

    .line 1062
    invoke-virtual {p0, v2}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 1063
    :cond_b
    invoke-virtual {p0, v3}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    if-eqz v6, :cond_d

    .line 1067
    invoke-virtual {p0}, Lkawa/lang/Translator;->getFileName()Ljava/lang/String;

    move-result-object p1

    .line 1068
    invoke-virtual {p0}, Lkawa/lang/Translator;->getLineNumber()I

    move-result v2

    .line 1069
    invoke-virtual {p0}, Lkawa/lang/Translator;->getColumnNumber()I

    move-result v3

    .line 1072
    :try_start_4
    invoke-virtual {p0, v0}, Lkawa/lang/Translator;->setLine(Ljava/lang/Object;)V

    .line 1073
    invoke-virtual {v6, v0, p2, p0}, Lkawa/lang/Syntax;->scanForm(Lgnu/lists/Pair;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1078
    iput-object v1, p0, Lkawa/lang/Translator;->macroContext:Lgnu/expr/Declaration;

    .line 1079
    invoke-virtual {p0, p1, v2, v3}, Lkawa/lang/Translator;->setLine(Ljava/lang/String;II)V

    return-void

    :catchall_2
    move-exception p2

    .line 1078
    iput-object v1, p0, Lkawa/lang/Translator;->macroContext:Lgnu/expr/Declaration;

    .line 1079
    invoke-virtual {p0, p1, v2, v3}, Lkawa/lang/Translator;->setLine(Ljava/lang/String;II)V

    throw p2

    :catchall_3
    move-exception p1

    .line 1061
    iget-object p2, p0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    if-eq v2, p2, :cond_c

    .line 1062
    invoke-virtual {p0, v2}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 1063
    :cond_c
    invoke-virtual {p0, v3}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    throw p1

    .line 1083
    :cond_d
    iget-object p2, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {p2, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final selfEvaluatingSymbol(Ljava/lang/Object;)Z
    .locals 1

    .line 158
    invoke-virtual {p0}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v0

    check-cast v0, Lgnu/kawa/lispexpr/LispLanguage;

    invoke-virtual {v0, p1}, Lgnu/kawa/lispexpr/LispLanguage;->selfEvaluatingSymbol(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setLineOf(Lgnu/expr/Expression;)V
    .locals 1

    .line 866
    instance-of v0, p1, Lgnu/expr/QuoteExp;

    if-eqz v0, :cond_0

    return-void

    .line 868
    :cond_0
    invoke-virtual {p1, p0}, Lgnu/expr/Expression;->setLocation(Lgnu/text/SourceLocator;)V

    return-void
.end method
