.class public Lgnu/kawa/lispexpr/DefineNamespace;
.super Lkawa/lang/Syntax;
.source "DefineNamespace.java"


# static fields
.field public static final XML_NAMESPACE_MAGIC:Ljava/lang/String; = "&xml&"

.field public static final define_namespace:Lgnu/kawa/lispexpr/DefineNamespace;

.field public static final define_private_namespace:Lgnu/kawa/lispexpr/DefineNamespace;

.field public static final define_xml_namespace:Lgnu/kawa/lispexpr/DefineNamespace;


# instance fields
.field private makePrivate:Z

.field private makeXML:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 14
    new-instance v0, Lgnu/kawa/lispexpr/DefineNamespace;

    invoke-direct {v0}, Lgnu/kawa/lispexpr/DefineNamespace;-><init>()V

    sput-object v0, Lgnu/kawa/lispexpr/DefineNamespace;->define_namespace:Lgnu/kawa/lispexpr/DefineNamespace;

    .line 16
    new-instance v1, Lgnu/kawa/lispexpr/DefineNamespace;

    invoke-direct {v1}, Lgnu/kawa/lispexpr/DefineNamespace;-><init>()V

    sput-object v1, Lgnu/kawa/lispexpr/DefineNamespace;->define_private_namespace:Lgnu/kawa/lispexpr/DefineNamespace;

    .line 18
    new-instance v2, Lgnu/kawa/lispexpr/DefineNamespace;

    invoke-direct {v2}, Lgnu/kawa/lispexpr/DefineNamespace;-><init>()V

    sput-object v2, Lgnu/kawa/lispexpr/DefineNamespace;->define_xml_namespace:Lgnu/kawa/lispexpr/DefineNamespace;

    const-string v3, "define-namespace"

    .line 21
    invoke-virtual {v0, v3}, Lgnu/kawa/lispexpr/DefineNamespace;->setName(Ljava/lang/String;)V

    const-string v0, "define-private-namespace"

    .line 22
    invoke-virtual {v1, v0}, Lgnu/kawa/lispexpr/DefineNamespace;->setName(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, v1, Lgnu/kawa/lispexpr/DefineNamespace;->makePrivate:Z

    const-string v1, "define-xml-namespace"

    .line 24
    invoke-virtual {v2, v1}, Lgnu/kawa/lispexpr/DefineNamespace;->setName(Ljava/lang/String;)V

    .line 25
    iput-boolean v0, v2, Lgnu/kawa/lispexpr/DefineNamespace;->makeXML:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 0

    const-string p1, "define-namespace is only allowed in a <body>"

    .line 93
    invoke-virtual {p2, p1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method

.method public scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z
    .locals 8

    .line 32
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lgnu/lists/Pair;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/lists/Pair;

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lgnu/lists/Pair;

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/lists/Pair;

    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v2, v3, :cond_0

    goto/16 :goto_3

    .line 40
    :cond_0
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/Symbol;

    const/16 v3, 0x77

    .line 41
    invoke-virtual {p3, v2, v3, p4}, Lgnu/expr/ScopeExp;->getDefine(Ljava/lang/Object;CLgnu/expr/Compilation;)Lgnu/expr/Declaration;

    move-result-object v3

    .line 42
    invoke-virtual {p4, v3}, Lkawa/lang/Translator;->push(Lgnu/expr/Declaration;)V

    const-wide/32 v4, 0x244000

    .line 43
    invoke-virtual {v3, v4, v5}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 45
    iget-boolean v4, p0, Lgnu/kawa/lispexpr/DefineNamespace;->makePrivate:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    const-wide/32 v6, 0x1000000

    .line 47
    invoke-virtual {v3, v6, v7}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 48
    invoke-virtual {v3, v5}, Lgnu/expr/Declaration;->setPrivate(Z)V

    goto :goto_0

    .line 50
    :cond_1
    instance-of p3, p3, Lgnu/expr/ModuleExp;

    if-eqz p3, :cond_2

    .line 51
    invoke-virtual {v3, v5}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 52
    :cond_2
    :goto_0
    invoke-static {v3, p1}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Declaration;Ljava/lang/Object;)V

    .line 55
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_5

    .line 62
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "class:"

    .line 64
    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    const/4 p3, 0x6

    .line 66
    invoke-virtual {p1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    .line 67
    invoke-static {p3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object p3

    invoke-static {p1, p3}, Lgnu/kawa/lispexpr/ClassNamespace;->getInstance(Ljava/lang/String;Lgnu/bytecode/ClassType;)Lgnu/kawa/lispexpr/ClassNamespace;

    move-result-object p1

    const-string p3, "gnu.kawa.lispexpr.ClassNamespace"

    .line 69
    invoke-static {p3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object p3

    invoke-virtual {v3, p3}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    goto :goto_1

    .line 71
    :cond_3
    iget-boolean p3, p0, Lgnu/kawa/lispexpr/DefineNamespace;->makeXML:Z

    if-eqz p3, :cond_4

    .line 73
    invoke-virtual {v2}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p1}, Lgnu/kawa/xml/XmlNamespace;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/xml/XmlNamespace;

    move-result-object p1

    const-string p3, "gnu.kawa.xml.XmlNamespace"

    .line 74
    invoke-static {p3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object p3

    invoke-virtual {v3, p3}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    goto :goto_1

    .line 78
    :cond_4
    invoke-static {p1}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object p1

    const-string p3, "gnu.mapping.Namespace"

    .line 79
    invoke-static {p3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object p3

    invoke-virtual {v3, p3}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 81
    :goto_1
    new-instance p3, Lgnu/expr/QuoteExp;

    invoke-direct {p3, p1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    const-wide/16 v0, 0x2000

    .line 82
    invoke-virtual {v3, v0, v1}, Lgnu/expr/Declaration;->setFlag(J)V

    goto :goto_2

    .line 85
    :cond_5
    invoke-virtual {p4, v0, v1}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;

    move-result-object p3

    .line 86
    :goto_2
    invoke-virtual {v3, p3}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 87
    invoke-static {v3, p3}, Lgnu/expr/SetExp;->makeDefinition(Lgnu/expr/Declaration;Lgnu/expr/Expression;)Lgnu/expr/SetExp;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return v5

    :cond_6
    :goto_3
    const/16 p1, 0x65

    const-string p2, "invalid syntax for define-namespace"

    .line 37
    invoke-virtual {p4, p1, p2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    return v1
.end method
