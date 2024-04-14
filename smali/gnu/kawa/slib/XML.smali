.class public Lgnu/kawa/slib/XML;
.super Lgnu/expr/ModuleBody;
.source "XML.scm"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nXML.scm\nScheme\n*S Scheme\n*F\n+ 1 XML.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/XML.scm\n*L\n1#1,24:1\n*E\n"
.end annotation


# static fields
.field public static final $instance:Lgnu/kawa/slib/XML;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field public static as$Mnxml:Lgnu/kawa/xml/OutputAsXML;

.field public static final attribute$Mnname:Lgnu/expr/ModuleMethod;

.field public static final comment:Ljava/lang/Class;

.field public static final element$Mnname:Lgnu/expr/ModuleMethod;

.field public static final parse$Mnxml$Mnfrom$Mnurl:Lgnu/expr/ModuleMethod;

.field public static final processing$Mninstruction:Ljava/lang/Class;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "attribute-name"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/XML;->Lit2:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "element-name"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/XML;->Lit1:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "parse-xml-from-url"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lgnu/kawa/slib/XML;->Lit0:Lgnu/mapping/SimpleSymbol;

    const-class v3, Lgnu/kawa/xml/KProcessingInstruction;

    sput-object v3, Lgnu/kawa/slib/XML;->processing$Mninstruction:Ljava/lang/Class;

    const-class v3, Lgnu/kawa/xml/KComment;

    sput-object v3, Lgnu/kawa/slib/XML;->comment:Ljava/lang/Class;

    new-instance v3, Lgnu/kawa/slib/XML;

    invoke-direct {v3}, Lgnu/kawa/slib/XML;-><init>()V

    sput-object v3, Lgnu/kawa/slib/XML;->$instance:Lgnu/kawa/slib/XML;

    new-instance v4, Lgnu/expr/ModuleMethod;

    const/4 v5, 0x1

    const/16 v6, 0x1001

    invoke-direct {v4, v3, v5, v2, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v4, Lgnu/kawa/slib/XML;->parse$Mnxml$Mnfrom$Mnurl:Lgnu/expr/ModuleMethod;

    new-instance v2, Lgnu/expr/ModuleMethod;

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v1, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v2, Lgnu/kawa/slib/XML;->element$Mnname:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x3

    invoke-direct {v1, v3, v2, v0, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/XML;->attribute$Mnname:Lgnu/expr/ModuleMethod;

    invoke-virtual {v3}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static attributeName(Lgnu/kawa/xml/KAttr;)Lgnu/mapping/Symbol;
    .locals 0

    .line 24
    invoke-virtual {p0}, Lgnu/kawa/xml/KAttr;->getNodeSymbol()Lgnu/mapping/Symbol;

    move-result-object p0

    return-object p0
.end method

.method public static elementName(Lgnu/kawa/xml/KElement;)Lgnu/mapping/Symbol;
    .locals 0

    .line 21
    invoke-virtual {p0}, Lgnu/kawa/xml/KElement;->getNodeSymbol()Lgnu/mapping/Symbol;

    move-result-object p0

    return-object p0
.end method

.method public static parseXmlFromUrl(Ljava/lang/Object;)Lgnu/kawa/xml/KDocument;
    .locals 0

    .line 18
    invoke-static {p0}, Lgnu/kawa/xml/Document;->parse(Ljava/lang/Object;)Lgnu/kawa/xml/KDocument;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 23
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    :try_start_0
    check-cast p2, Lgnu/kawa/xml/KAttr;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p2}, Lgnu/kawa/slib/XML;->attributeName(Lgnu/kawa/xml/KAttr;)Lgnu/mapping/Symbol;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "attribute-name"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 20
    :cond_1
    :try_start_1
    check-cast p2, Lgnu/kawa/xml/KElement;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {p2}, Lgnu/kawa/slib/XML;->elementName(Lgnu/kawa/xml/KElement;)Lgnu/mapping/Symbol;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "element-name"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 17
    :cond_2
    invoke-static {p2}, Lgnu/kawa/slib/XML;->parseXmlFromUrl(Ljava/lang/Object;)Lgnu/kawa/xml/KDocument;

    move-result-object p1

    return-object p1
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 5

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    const v4, -0xbffff

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    .line 17
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 23
    :cond_0
    instance-of v0, p2, Lgnu/kawa/xml/KAttr;

    if-nez v0, :cond_1

    return v4

    :cond_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 20
    :cond_2
    instance-of v0, p2, Lgnu/kawa/xml/KElement;

    if-nez v0, :cond_3

    return v4

    :cond_3
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 17
    :cond_4
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 0

    .line 1
    iget-object p1, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    new-instance p1, Lgnu/kawa/xml/OutputAsXML;

    invoke-direct {p1}, Lgnu/kawa/xml/OutputAsXML;-><init>()V

    sput-object p1, Lgnu/kawa/slib/XML;->as$Mnxml:Lgnu/kawa/xml/OutputAsXML;

    return-void
.end method
