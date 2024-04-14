.class public Lgnu/kawa/lispexpr/MakeXmlElement;
.super Lkawa/lang/Syntax;
.source "MakeXmlElement.java"


# static fields
.field public static final makeXml:Lgnu/kawa/lispexpr/MakeXmlElement;

.field static final typeNamespace:Lgnu/bytecode/ClassType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lgnu/kawa/lispexpr/MakeXmlElement;

    invoke-direct {v0}, Lgnu/kawa/lispexpr/MakeXmlElement;-><init>()V

    sput-object v0, Lgnu/kawa/lispexpr/MakeXmlElement;->makeXml:Lgnu/kawa/lispexpr/MakeXmlElement;

    const-string v1, "$make-xml$"

    .line 20
    invoke-virtual {v0, v1}, Lgnu/kawa/lispexpr/MakeXmlElement;->setName(Ljava/lang/String;)V

    const-string v0, "gnu.mapping.Namespace"

    .line 22
    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/lispexpr/MakeXmlElement;->typeNamespace:Lgnu/bytecode/ClassType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 13

    .line 27
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/lists/Pair;

    .line 28
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    .line 29
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    .line 31
    iget-object v2, p2, Lkawa/lang/Translator;->xmlElementNamespaces:Lgnu/xml/NamespaceBinding;

    const/4 v3, 0x0

    move-object v4, v2

    const/4 v5, 0x0

    .line 33
    :goto_0
    instance-of v6, v1, Lgnu/lists/Pair;

    if-eqz v6, :cond_7

    if-nez v5, :cond_0

    .line 37
    invoke-virtual {p2}, Lkawa/lang/Translator;->letStart()V

    const/4 v5, 0x1

    .line 40
    :cond_0
    check-cast v1, Lgnu/lists/Pair;

    .line 41
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/lists/Pair;

    .line 42
    invoke-virtual {v6}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 43
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_1

    move-object v7, v9

    goto :goto_1

    :cond_1
    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    .line 44
    :goto_1
    invoke-virtual {v6}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v6

    .line 45
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    :goto_2
    instance-of v10, v6, Lgnu/lists/Pair;

    if-eqz v10, :cond_4

    .line 48
    check-cast v6, Lgnu/lists/Pair;

    .line 49
    invoke-virtual {v6}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v10

    .line 51
    invoke-static {v10, v3}, Lgnu/lists/LList;->listLength(Ljava/lang/Object;Z)I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_2

    instance-of v11, v10, Lgnu/lists/Pair;

    if-eqz v11, :cond_2

    check-cast v10, Lgnu/lists/Pair;

    invoke-virtual {v10}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Lgnu/kawa/xml/MakeText;->makeText:Lgnu/kawa/xml/MakeText;

    if-ne v11, v12, :cond_2

    .line 55
    invoke-virtual {v10}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lgnu/lists/Pair;

    invoke-virtual {v10}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v10

    goto :goto_3

    .line 59
    :cond_2
    invoke-virtual {p2, v6, v3}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;

    move-result-object v10

    .line 60
    invoke-virtual {v10}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v10

    :goto_3
    if-nez v10, :cond_3

    .line 64
    invoke-virtual {p2, v6}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    const/16 v11, 0x65

    const-string v12, "namespace URI must be literal"

    .line 65
    invoke-virtual {p2, v11, v12}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 66
    invoke-virtual {p2, v10}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    goto :goto_4

    .line 69
    :cond_3
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    :goto_4
    invoke-virtual {v6}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v6

    goto :goto_2

    .line 72
    :cond_4
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    .line 76
    new-instance v8, Lgnu/xml/NamespaceBinding;

    const-string v10, ""

    if-ne v6, v10, :cond_5

    goto :goto_5

    :cond_5
    move-object v9, v6

    :goto_5
    invoke-direct {v8, v7, v9, v4}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    if-nez v7, :cond_6

    .line 83
    invoke-static {v6}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v4

    const-string v7, "[default-element-namespace]"

    goto :goto_6

    .line 88
    :cond_6
    invoke-static {v7, v6}, Lgnu/kawa/xml/XmlNamespace;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/xml/XmlNamespace;

    move-result-object v4

    .line 90
    :goto_6
    sget-object v6, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    invoke-virtual {v6, v7}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v6

    .line 91
    sget-object v7, Lgnu/kawa/lispexpr/MakeXmlElement;->typeNamespace:Lgnu/bytecode/ClassType;

    new-instance v9, Lgnu/expr/QuoteExp;

    invoke-direct {v9, v4}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, v6, v7, v9}, Lkawa/lang/Translator;->letVariable(Ljava/lang/Object;Lgnu/bytecode/Type;Lgnu/expr/Expression;)Lgnu/expr/Declaration;

    move-result-object v4

    const-wide/32 v6, 0x206000

    .line 93
    invoke-virtual {v4, v6, v7}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 95
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v8

    goto/16 :goto_0

    .line 98
    :cond_7
    new-instance v1, Lgnu/kawa/xml/MakeElement;

    invoke-direct {v1}, Lgnu/kawa/xml/MakeElement;-><init>()V

    .line 99
    invoke-virtual {v1, v4}, Lgnu/kawa/xml/MakeElement;->setNamespaceNodes(Lgnu/xml/NamespaceBinding;)V

    .line 100
    iput-object v4, p2, Lkawa/lang/Translator;->xmlElementNamespaces:Lgnu/xml/NamespaceBinding;

    if-eqz v5, :cond_8

    .line 104
    :try_start_0
    invoke-virtual {p2}, Lkawa/lang/Translator;->letEnter()V

    .line 105
    :cond_8
    invoke-static {p1, v1, v0}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p1

    invoke-virtual {p2, p1}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object p1

    if-eqz v5, :cond_9

    .line 106
    invoke-virtual {p2, p1}, Lkawa/lang/Translator;->letDone(Lgnu/expr/Expression;)Lgnu/expr/LetExp;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :cond_9
    iput-object v2, p2, Lkawa/lang/Translator;->xmlElementNamespaces:Lgnu/xml/NamespaceBinding;

    return-object p1

    :catchall_0
    move-exception p1

    iput-object v2, p2, Lkawa/lang/Translator;->xmlElementNamespaces:Lgnu/xml/NamespaceBinding;

    throw p1
.end method
