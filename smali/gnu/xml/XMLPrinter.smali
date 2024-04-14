.class public Lgnu/xml/XMLPrinter;
.super Lgnu/mapping/OutPort;
.source "XMLPrinter.java"

# interfaces
.implements Lgnu/lists/PositionConsumer;
.implements Lgnu/lists/XConsumer;


# static fields
.field private static final COMMENT:I = -0x5

.field private static final ELEMENT_END:I = -0x4

.field private static final ELEMENT_START:I = -0x3

.field static final HtmlEmptyTags:Ljava/lang/String; = "/area/base/basefont/br/col/frame/hr/img/input/isindex/link/meta/para/"

.field private static final KEYWORD:I = -0x6

.field private static final PROC_INST:I = -0x7

.field private static final WORD:I = -0x2

.field public static final doctypePublic:Lgnu/mapping/ThreadLocation;

.field public static final doctypeSystem:Lgnu/mapping/ThreadLocation;

.field public static final indentLoc:Lgnu/mapping/ThreadLocation;


# instance fields
.field canonicalize:Z

.field public canonicalizeCDATA:Z

.field elementNameStack:[Ljava/lang/Object;

.field elementNesting:I

.field public escapeNonAscii:Z

.field public escapeText:Z

.field inAttribute:Z

.field inComment:I

.field inDocument:Z

.field inStartTag:Z

.field public indentAttributes:Z

.field isHtml:Z

.field isHtmlOrXhtml:Z

.field namespaceBindings:Lgnu/xml/NamespaceBinding;

.field namespaceSaveStack:[Lgnu/xml/NamespaceBinding;

.field needXMLdecl:Z

.field prev:I

.field public printIndent:I

.field printXMLdecl:Z

.field savedHighSurrogate:C

.field public strict:Z

.field style:Ljava/lang/Object;

.field undeclareNamespaces:Z

.field public useEmptyElementTag:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    new-instance v0, Lgnu/mapping/ThreadLocation;

    const-string v1, "doctype-system"

    invoke-direct {v0, v1}, Lgnu/mapping/ThreadLocation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/xml/XMLPrinter;->doctypeSystem:Lgnu/mapping/ThreadLocation;

    .line 59
    new-instance v0, Lgnu/mapping/ThreadLocation;

    const-string v1, "doctype-public"

    invoke-direct {v0, v1}, Lgnu/mapping/ThreadLocation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/xml/XMLPrinter;->doctypePublic:Lgnu/mapping/ThreadLocation;

    .line 61
    new-instance v0, Lgnu/mapping/ThreadLocation;

    const-string v1, "xml-indent"

    invoke-direct {v0, v1}, Lgnu/mapping/ThreadLocation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/xml/XMLPrinter;->indentLoc:Lgnu/mapping/ThreadLocation;

    return-void
.end method

.method public constructor <init>(Lgnu/mapping/OutPort;Z)V
    .locals 1

    .line 90
    invoke-direct {p0, p1, p2}, Lgnu/mapping/OutPort;-><init>(Lgnu/mapping/OutPort;Z)V

    const/4 p1, -0x1

    .line 25
    iput p1, p0, Lgnu/xml/XMLPrinter;->printIndent:I

    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lgnu/xml/XMLPrinter;->printXMLdecl:Z

    .line 32
    iput-boolean p1, p0, Lgnu/xml/XMLPrinter;->inAttribute:Z

    .line 33
    iput-boolean p1, p0, Lgnu/xml/XMLPrinter;->inStartTag:Z

    .line 36
    iput-boolean p1, p0, Lgnu/xml/XMLPrinter;->needXMLdecl:Z

    const/4 p2, 0x1

    .line 37
    iput-boolean p2, p0, Lgnu/xml/XMLPrinter;->canonicalize:Z

    const/4 v0, 0x2

    .line 45
    iput v0, p0, Lgnu/xml/XMLPrinter;->useEmptyElementTag:I

    .line 46
    iput-boolean p2, p0, Lgnu/xml/XMLPrinter;->escapeText:Z

    .line 47
    iput-boolean p2, p0, Lgnu/xml/XMLPrinter;->escapeNonAscii:Z

    .line 48
    iput-boolean p1, p0, Lgnu/xml/XMLPrinter;->isHtml:Z

    .line 49
    iput-boolean p1, p0, Lgnu/xml/XMLPrinter;->isHtmlOrXhtml:Z

    .line 50
    iput-boolean p1, p0, Lgnu/xml/XMLPrinter;->undeclareNamespaces:Z

    .line 67
    sget-object p1, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    iput-object p1, p0, Lgnu/xml/XMLPrinter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    const/16 p1, 0x14

    new-array p2, p1, [Lgnu/xml/NamespaceBinding;

    .line 70
    iput-object p2, p0, Lgnu/xml/XMLPrinter;->namespaceSaveStack:[Lgnu/xml/NamespaceBinding;

    new-array p1, p1, [Ljava/lang/Object;

    .line 72
    iput-object p1, p0, Lgnu/xml/XMLPrinter;->elementNameStack:[Ljava/lang/Object;

    const/16 p1, 0x20

    .line 84
    iput p1, p0, Lgnu/xml/XMLPrinter;->prev:I

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2

    .line 110
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1, p1}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;ZZ)V

    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lgnu/xml/XMLPrinter;->printIndent:I

    .line 29
    iput-boolean p1, p0, Lgnu/xml/XMLPrinter;->printXMLdecl:Z

    .line 32
    iput-boolean p1, p0, Lgnu/xml/XMLPrinter;->inAttribute:Z

    .line 33
    iput-boolean p1, p0, Lgnu/xml/XMLPrinter;->inStartTag:Z

    .line 36
    iput-boolean p1, p0, Lgnu/xml/XMLPrinter;->needXMLdecl:Z

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lgnu/xml/XMLPrinter;->canonicalize:Z

    const/4 v1, 0x2

    .line 45
    iput v1, p0, Lgnu/xml/XMLPrinter;->useEmptyElementTag:I

    .line 46
    iput-boolean v0, p0, Lgnu/xml/XMLPrinter;->escapeText:Z

    .line 47
    iput-boolean v0, p0, Lgnu/xml/XMLPrinter;->escapeNonAscii:Z

    .line 48
    iput-boolean p1, p0, Lgnu/xml/XMLPrinter;->isHtml:Z

    .line 49
    iput-boolean p1, p0, Lgnu/xml/XMLPrinter;->isHtmlOrXhtml:Z

    .line 50
    iput-boolean p1, p0, Lgnu/xml/XMLPrinter;->undeclareNamespaces:Z

    .line 67
    sget-object p1, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    iput-object p1, p0, Lgnu/xml/XMLPrinter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    const/16 p1, 0x14

    new-array v0, p1, [Lgnu/xml/NamespaceBinding;

    .line 70
    iput-object v0, p0, Lgnu/xml/XMLPrinter;->namespaceSaveStack:[Lgnu/xml/NamespaceBinding;

    new-array p1, p1, [Ljava/lang/Object;

    .line 72
    iput-object p1, p0, Lgnu/xml/XMLPrinter;->elementNameStack:[Ljava/lang/Object;

    const/16 p1, 0x20

    .line 84
    iput p1, p0, Lgnu/xml/XMLPrinter;->prev:I

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lgnu/text/Path;)V
    .locals 2

    .line 115
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/4 p1, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;ZZLgnu/text/Path;)V

    const/4 p2, -0x1

    .line 25
    iput p2, p0, Lgnu/xml/XMLPrinter;->printIndent:I

    .line 29
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->printXMLdecl:Z

    .line 32
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->inAttribute:Z

    .line 33
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->inStartTag:Z

    .line 36
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->needXMLdecl:Z

    .line 37
    iput-boolean p1, p0, Lgnu/xml/XMLPrinter;->canonicalize:Z

    const/4 p2, 0x2

    .line 45
    iput p2, p0, Lgnu/xml/XMLPrinter;->useEmptyElementTag:I

    .line 46
    iput-boolean p1, p0, Lgnu/xml/XMLPrinter;->escapeText:Z

    .line 47
    iput-boolean p1, p0, Lgnu/xml/XMLPrinter;->escapeNonAscii:Z

    .line 48
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->isHtml:Z

    .line 49
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->isHtmlOrXhtml:Z

    .line 50
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->undeclareNamespaces:Z

    .line 67
    sget-object p1, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    iput-object p1, p0, Lgnu/xml/XMLPrinter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    const/16 p1, 0x14

    new-array p2, p1, [Lgnu/xml/NamespaceBinding;

    .line 70
    iput-object p2, p0, Lgnu/xml/XMLPrinter;->namespaceSaveStack:[Lgnu/xml/NamespaceBinding;

    new-array p1, p1, [Ljava/lang/Object;

    .line 72
    iput-object p1, p0, Lgnu/xml/XMLPrinter;->elementNameStack:[Ljava/lang/Object;

    const/16 p1, 0x20

    .line 84
    iput p1, p0, Lgnu/xml/XMLPrinter;->prev:I

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 1

    .line 100
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/4 p1, 0x1

    invoke-direct {p0, v0, p1, p2}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;ZZ)V

    const/4 p2, -0x1

    .line 25
    iput p2, p0, Lgnu/xml/XMLPrinter;->printIndent:I

    const/4 p2, 0x0

    .line 29
    iput-boolean p2, p0, Lgnu/xml/XMLPrinter;->printXMLdecl:Z

    .line 32
    iput-boolean p2, p0, Lgnu/xml/XMLPrinter;->inAttribute:Z

    .line 33
    iput-boolean p2, p0, Lgnu/xml/XMLPrinter;->inStartTag:Z

    .line 36
    iput-boolean p2, p0, Lgnu/xml/XMLPrinter;->needXMLdecl:Z

    .line 37
    iput-boolean p1, p0, Lgnu/xml/XMLPrinter;->canonicalize:Z

    const/4 v0, 0x2

    .line 45
    iput v0, p0, Lgnu/xml/XMLPrinter;->useEmptyElementTag:I

    .line 46
    iput-boolean p1, p0, Lgnu/xml/XMLPrinter;->escapeText:Z

    .line 47
    iput-boolean p1, p0, Lgnu/xml/XMLPrinter;->escapeNonAscii:Z

    .line 48
    iput-boolean p2, p0, Lgnu/xml/XMLPrinter;->isHtml:Z

    .line 49
    iput-boolean p2, p0, Lgnu/xml/XMLPrinter;->isHtmlOrXhtml:Z

    .line 50
    iput-boolean p2, p0, Lgnu/xml/XMLPrinter;->undeclareNamespaces:Z

    .line 67
    sget-object p1, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    iput-object p1, p0, Lgnu/xml/XMLPrinter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    const/16 p1, 0x14

    new-array p2, p1, [Lgnu/xml/NamespaceBinding;

    .line 70
    iput-object p2, p0, Lgnu/xml/XMLPrinter;->namespaceSaveStack:[Lgnu/xml/NamespaceBinding;

    new-array p1, p1, [Ljava/lang/Object;

    .line 72
    iput-object p1, p0, Lgnu/xml/XMLPrinter;->elementNameStack:[Ljava/lang/Object;

    const/16 p1, 0x20

    .line 84
    iput p1, p0, Lgnu/xml/XMLPrinter;->prev:I

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2

    .line 105
    invoke-direct {p0, p1}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;)V

    const/4 p1, -0x1

    .line 25
    iput p1, p0, Lgnu/xml/XMLPrinter;->printIndent:I

    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lgnu/xml/XMLPrinter;->printXMLdecl:Z

    .line 32
    iput-boolean p1, p0, Lgnu/xml/XMLPrinter;->inAttribute:Z

    .line 33
    iput-boolean p1, p0, Lgnu/xml/XMLPrinter;->inStartTag:Z

    .line 36
    iput-boolean p1, p0, Lgnu/xml/XMLPrinter;->needXMLdecl:Z

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lgnu/xml/XMLPrinter;->canonicalize:Z

    const/4 v1, 0x2

    .line 45
    iput v1, p0, Lgnu/xml/XMLPrinter;->useEmptyElementTag:I

    .line 46
    iput-boolean v0, p0, Lgnu/xml/XMLPrinter;->escapeText:Z

    .line 47
    iput-boolean v0, p0, Lgnu/xml/XMLPrinter;->escapeNonAscii:Z

    .line 48
    iput-boolean p1, p0, Lgnu/xml/XMLPrinter;->isHtml:Z

    .line 49
    iput-boolean p1, p0, Lgnu/xml/XMLPrinter;->isHtmlOrXhtml:Z

    .line 50
    iput-boolean p1, p0, Lgnu/xml/XMLPrinter;->undeclareNamespaces:Z

    .line 67
    sget-object p1, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    iput-object p1, p0, Lgnu/xml/XMLPrinter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    const/16 p1, 0x14

    new-array v0, p1, [Lgnu/xml/NamespaceBinding;

    .line 70
    iput-object v0, p0, Lgnu/xml/XMLPrinter;->namespaceSaveStack:[Lgnu/xml/NamespaceBinding;

    new-array p1, p1, [Ljava/lang/Object;

    .line 72
    iput-object p1, p0, Lgnu/xml/XMLPrinter;->elementNameStack:[Ljava/lang/Object;

    const/16 p1, 0x20

    .line 84
    iput p1, p0, Lgnu/xml/XMLPrinter;->prev:I

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Z)V
    .locals 1

    .line 95
    invoke-direct {p0, p1, p2}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;Z)V

    const/4 p1, -0x1

    .line 25
    iput p1, p0, Lgnu/xml/XMLPrinter;->printIndent:I

    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lgnu/xml/XMLPrinter;->printXMLdecl:Z

    .line 32
    iput-boolean p1, p0, Lgnu/xml/XMLPrinter;->inAttribute:Z

    .line 33
    iput-boolean p1, p0, Lgnu/xml/XMLPrinter;->inStartTag:Z

    .line 36
    iput-boolean p1, p0, Lgnu/xml/XMLPrinter;->needXMLdecl:Z

    const/4 p2, 0x1

    .line 37
    iput-boolean p2, p0, Lgnu/xml/XMLPrinter;->canonicalize:Z

    const/4 v0, 0x2

    .line 45
    iput v0, p0, Lgnu/xml/XMLPrinter;->useEmptyElementTag:I

    .line 46
    iput-boolean p2, p0, Lgnu/xml/XMLPrinter;->escapeText:Z

    .line 47
    iput-boolean p2, p0, Lgnu/xml/XMLPrinter;->escapeNonAscii:Z

    .line 48
    iput-boolean p1, p0, Lgnu/xml/XMLPrinter;->isHtml:Z

    .line 49
    iput-boolean p1, p0, Lgnu/xml/XMLPrinter;->isHtmlOrXhtml:Z

    .line 50
    iput-boolean p1, p0, Lgnu/xml/XMLPrinter;->undeclareNamespaces:Z

    .line 67
    sget-object p1, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    iput-object p1, p0, Lgnu/xml/XMLPrinter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    const/16 p1, 0x14

    new-array p2, p1, [Lgnu/xml/NamespaceBinding;

    .line 70
    iput-object p2, p0, Lgnu/xml/XMLPrinter;->namespaceSaveStack:[Lgnu/xml/NamespaceBinding;

    new-array p1, p1, [Ljava/lang/Object;

    .line 72
    iput-object p1, p0, Lgnu/xml/XMLPrinter;->elementNameStack:[Ljava/lang/Object;

    const/16 p1, 0x20

    .line 84
    iput p1, p0, Lgnu/xml/XMLPrinter;->prev:I

    return-void
.end method

.method static formatDecimal(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/16 v0, 0x2e

    .line 692
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_3

    .line 695
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    move v2, v1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 698
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-eq v3, v4, :cond_0

    if-eq v3, v0, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    if-ne v2, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 703
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_3
    :goto_0
    return-object p0
.end method

.method public static formatDecimal(Ljava/math/BigDecimal;)Ljava/lang/String;
    .locals 0

    .line 684
    invoke-virtual {p0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lgnu/xml/XMLPrinter;->formatDecimal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDouble(D)Ljava/lang/String;
    .locals 6

    .line 643
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "NaN"

    return-object p0

    :cond_0
    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 646
    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v2, :cond_2

    const-string p0, "-INF"

    goto :goto_1

    :cond_2
    const-string p0, "INF"

    :goto_1
    return-object p0

    :cond_3
    if-eqz v2, :cond_4

    neg-double v2, p0

    goto :goto_2

    :cond_4
    move-wide v2, p0

    .line 649
    :goto_2
    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    const-wide v4, 0x412e848000000000L    # 1000000.0

    cmpl-double p1, v2, v4

    if-gez p1, :cond_5

    const-wide v4, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double p1, v2, v4

    if-gez p1, :cond_6

    :cond_5
    cmpl-double p1, v2, v0

    if-eqz p1, :cond_6

    .line 653
    invoke-static {p0}, Lgnu/math/RealNum;->toStringScientific(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 655
    :cond_6
    invoke-static {p0}, Lgnu/math/RealNum;->toStringDecimal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lgnu/xml/XMLPrinter;->formatDecimal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatFloat(F)Ljava/lang/String;
    .locals 6

    .line 661
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "NaN"

    return-object p0

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 664
    :goto_0
    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    const-string p0, "-INF"

    goto :goto_1

    :cond_2
    const-string p0, "INF"

    :goto_1
    return-object p0

    :cond_3
    if-eqz v0, :cond_4

    neg-float v0, p0

    goto :goto_2

    :cond_4
    move v0, p0

    .line 667
    :goto_2
    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p0

    const v1, 0x49742400    # 1000000.0f

    cmpl-float v1, v0, v1

    if-gez v1, :cond_5

    float-to-double v1, v0

    const-wide v3, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v5, v1, v3

    if-gez v5, :cond_6

    :cond_5
    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_6

    .line 671
    invoke-static {p0}, Lgnu/math/RealNum;->toStringScientific(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 673
    :cond_6
    invoke-static {p0}, Lgnu/math/RealNum;->toStringDecimal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lgnu/xml/XMLPrinter;->formatDecimal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isHtmlEmptyElementTag(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "/area/base/basefont/br/col/frame/hr/img/input/isindex/link/meta/para/"

    .line 514
    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    add-int/lit8 v2, v1, -0x1

    .line 515
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, v3, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static make(Lgnu/mapping/OutPort;Ljava/lang/Object;)Lgnu/xml/XMLPrinter;
    .locals 2

    .line 120
    new-instance v0, Lgnu/xml/XMLPrinter;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lgnu/xml/XMLPrinter;-><init>(Lgnu/mapping/OutPort;Z)V

    .line 121
    invoke-virtual {v0, p1}, Lgnu/xml/XMLPrinter;->setStyle(Ljava/lang/Object;)V

    return-object v0
.end method

.method private startWord()V
    .locals 0

    .line 241
    invoke-virtual {p0}, Lgnu/xml/XMLPrinter;->closeTag()V

    .line 242
    invoke-virtual {p0}, Lgnu/xml/XMLPrinter;->writeWordStart()V

    return-void
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 129
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 130
    new-instance v1, Lgnu/xml/XMLPrinter;

    invoke-direct {v1, v0}, Lgnu/xml/XMLPrinter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v1, p0}, Lgnu/xml/XMLPrinter;->writeObject(Ljava/lang/Object;)V

    .line 131
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public beginComment()V
    .locals 3

    .line 842
    invoke-virtual {p0}, Lgnu/xml/XMLPrinter;->closeTag()V

    .line 843
    iget v0, p0, Lgnu/xml/XMLPrinter;->printIndent:I

    if-ltz v0, :cond_2

    .line 845
    iget v1, p0, Lgnu/xml/XMLPrinter;->prev:I

    const/4 v2, -0x3

    if-eq v1, v2, :cond_0

    const/4 v2, -0x4

    if-eq v1, v2, :cond_0

    const/4 v2, -0x5

    if-ne v1, v2, :cond_2

    :cond_0
    if-lez v0, :cond_1

    const/16 v0, 0x52

    goto :goto_0

    :cond_1
    const/16 v0, 0x4e

    .line 846
    :goto_0
    invoke-virtual {p0, v0}, Lgnu/xml/XMLPrinter;->writeBreak(I)V

    .line 849
    :cond_2
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string v1, "<!--"

    invoke-virtual {v0, v1}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 850
    iput v0, p0, Lgnu/xml/XMLPrinter;->inComment:I

    return-void
.end method

.method public beginEntity(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public closeTag()V
    .locals 5

    .line 264
    iget-boolean v0, p0, Lgnu/xml/XMLPrinter;->inStartTag:Z

    const/16 v1, 0x3e

    const/4 v2, 0x0

    const-string v3, ""

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lgnu/xml/XMLPrinter;->inAttribute:Z

    if-nez v0, :cond_1

    .line 266
    iget v0, p0, Lgnu/xml/XMLPrinter;->printIndent:I

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Lgnu/xml/XMLPrinter;->indentAttributes:Z

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {p0, v3}, Lgnu/xml/XMLPrinter;->endLogicalBlock(Ljava/lang/String;)V

    .line 268
    :cond_0
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v0, v1}, Lgnu/text/PrettyWriter;->write(I)V

    .line 269
    iput-boolean v2, p0, Lgnu/xml/XMLPrinter;->inStartTag:Z

    const/4 v0, -0x3

    .line 270
    iput v0, p0, Lgnu/xml/XMLPrinter;->prev:I

    goto :goto_0

    .line 272
    :cond_1
    iget-boolean v0, p0, Lgnu/xml/XMLPrinter;->needXMLdecl:Z

    if-eqz v0, :cond_3

    .line 275
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string v4, "<?xml version=\"1.0\"?>\n"

    invoke-virtual {v0, v4}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 276
    iget v0, p0, Lgnu/xml/XMLPrinter;->printIndent:I

    if-ltz v0, :cond_2

    const/4 v0, 0x2

    .line 278
    invoke-virtual {p0, v3, v3, v0}, Lgnu/xml/XMLPrinter;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 280
    :cond_2
    iput-boolean v2, p0, Lgnu/xml/XMLPrinter;->needXMLdecl:Z

    .line 281
    iput v1, p0, Lgnu/xml/XMLPrinter;->prev:I

    :cond_3
    :goto_0
    return-void
.end method

.method public consume(Lgnu/lists/SeqPosition;)V
    .locals 1

    .line 919
    iget-object v0, p1, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    iget p1, p1, Lgnu/lists/SeqPosition;->ipos:I

    invoke-virtual {v0, p1, p0}, Lgnu/lists/AbstractSequence;->consumeNext(ILgnu/lists/Consumer;)Z

    return-void
.end method

.method public endAttribute()V
    .locals 2

    .line 617
    iget-boolean v0, p0, Lgnu/xml/XMLPrinter;->inAttribute:Z

    if-eqz v0, :cond_1

    .line 619
    iget v0, p0, Lgnu/xml/XMLPrinter;->prev:I

    const/4 v1, -0x6

    if-eq v0, v1, :cond_0

    .line 621
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lgnu/text/PrettyWriter;->write(I)V

    const/4 v0, 0x0

    .line 622
    iput-boolean v0, p0, Lgnu/xml/XMLPrinter;->inAttribute:Z

    :cond_0
    const/16 v0, 0x20

    .line 624
    iput v0, p0, Lgnu/xml/XMLPrinter;->prev:I

    :cond_1
    return-void
.end method

.method public endComment()V
    .locals 2

    .line 855
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string v1, "-->"

    invoke-virtual {v0, v1}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    const/4 v0, -0x5

    .line 856
    iput v0, p0, Lgnu/xml/XMLPrinter;->prev:I

    const/4 v0, 0x0

    .line 857
    iput v0, p0, Lgnu/xml/XMLPrinter;->inComment:I

    return-void
.end method

.method public endDocument()V
    .locals 1

    const/4 v0, 0x0

    .line 315
    iput-boolean v0, p0, Lgnu/xml/XMLPrinter;->inDocument:Z

    .line 316
    iget v0, p0, Lgnu/xml/XMLPrinter;->printIndent:I

    if-ltz v0, :cond_0

    const-string v0, ""

    .line 317
    invoke-virtual {p0, v0}, Lgnu/xml/XMLPrinter;->endLogicalBlock(Ljava/lang/String;)V

    .line 318
    :cond_0
    invoke-virtual {p0}, Lgnu/xml/XMLPrinter;->freshLine()V

    return-void
.end method

.method public endElement()V
    .locals 12

    .line 536
    iget v0, p0, Lgnu/xml/XMLPrinter;->useEmptyElementTag:I

    if-nez v0, :cond_0

    .line 537
    invoke-virtual {p0}, Lgnu/xml/XMLPrinter;->closeTag()V

    .line 538
    :cond_0
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->elementNameStack:[Ljava/lang/Object;

    iget v1, p0, Lgnu/xml/XMLPrinter;->elementNesting:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    .line 541
    invoke-virtual {p0, v0}, Lgnu/xml/XMLPrinter;->getHtmlTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 543
    iget-boolean v3, p0, Lgnu/xml/XMLPrinter;->inStartTag:Z

    const/4 v4, -0x4

    const/4 v5, 0x0

    const-string v6, ""

    const/4 v7, 0x0

    const-string v8, ">"

    if-eqz v3, :cond_a

    .line 545
    iget v3, p0, Lgnu/xml/XMLPrinter;->printIndent:I

    if-ltz v3, :cond_1

    iget-boolean v3, p0, Lgnu/xml/XMLPrinter;->indentAttributes:Z

    if-eqz v3, :cond_1

    .line 547
    invoke-virtual {p0, v6}, Lgnu/xml/XMLPrinter;->endLogicalBlock(Ljava/lang/String;)V

    :cond_1
    if-eqz v1, :cond_2

    .line 550
    invoke-static {v1}, Lgnu/xml/XMLPrinter;->isHtmlEmptyElementTag(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 551
    :goto_0
    iget v9, p0, Lgnu/xml/XMLPrinter;->useEmptyElementTag:I

    if-eqz v9, :cond_3

    if-eqz v1, :cond_6

    if-nez v3, :cond_6

    .line 554
    :cond_3
    instance-of v9, v0, Lgnu/mapping/Symbol;

    if-eqz v9, :cond_6

    .line 556
    check-cast v0, Lgnu/mapping/Symbol;

    .line 557
    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getPrefix()Ljava/lang/String;

    move-result-object v9

    .line 558
    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v10

    .line 559
    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v0

    const-string v11, "></"

    if-eq v9, v6, :cond_4

    .line 561
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    if-eq v10, v6, :cond_5

    if-nez v10, :cond_6

    .line 563
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    move-object v0, v5

    :goto_1
    if-nez v0, :cond_9

    if-eqz v3, :cond_7

    .line 567
    iget-boolean v0, p0, Lgnu/xml/XMLPrinter;->isHtml:Z

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    iget v0, p0, Lgnu/xml/XMLPrinter;->useEmptyElementTag:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_8

    const-string v8, " />"

    goto :goto_2

    :cond_8
    const-string v8, "/>"

    :goto_2
    move-object v0, v8

    .line 568
    :cond_9
    iget-object v3, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v3, v0}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 569
    iput-boolean v7, p0, Lgnu/xml/XMLPrinter;->inStartTag:Z

    goto :goto_4

    .line 573
    :cond_a
    iget v3, p0, Lgnu/xml/XMLPrinter;->printIndent:I

    if-ltz v3, :cond_c

    .line 575
    invoke-virtual {p0, v7, v7}, Lgnu/xml/XMLPrinter;->setIndentation(IZ)V

    .line 576
    iget v3, p0, Lgnu/xml/XMLPrinter;->prev:I

    if-ne v3, v4, :cond_c

    .line 577
    iget v3, p0, Lgnu/xml/XMLPrinter;->printIndent:I

    if-lez v3, :cond_b

    const/16 v3, 0x52

    goto :goto_3

    :cond_b
    const/16 v3, 0x4e

    :goto_3
    invoke-virtual {p0, v3}, Lgnu/xml/XMLPrinter;->writeBreak(I)V

    .line 580
    :cond_c
    iget-object v3, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string v7, "</"

    invoke-virtual {v3, v7}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 581
    invoke-virtual {p0, v0}, Lgnu/xml/XMLPrinter;->writeQName(Ljava/lang/Object;)V

    .line 582
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v0, v8}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 584
    :goto_4
    iget v0, p0, Lgnu/xml/XMLPrinter;->printIndent:I

    if-ltz v0, :cond_d

    .line 586
    invoke-virtual {p0, v6}, Lgnu/xml/XMLPrinter;->endLogicalBlock(Ljava/lang/String;)V

    .line 588
    :cond_d
    iput v4, p0, Lgnu/xml/XMLPrinter;->prev:I

    if-eqz v1, :cond_f

    .line 589
    iget-boolean v0, p0, Lgnu/xml/XMLPrinter;->escapeText:Z

    if-nez v0, :cond_f

    const-string v0, "script"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "style"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 591
    :cond_e
    iput-boolean v2, p0, Lgnu/xml/XMLPrinter;->escapeText:Z

    .line 593
    :cond_f
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->namespaceSaveStack:[Lgnu/xml/NamespaceBinding;

    iget v1, p0, Lgnu/xml/XMLPrinter;->elementNesting:I

    sub-int/2addr v1, v2

    iput v1, p0, Lgnu/xml/XMLPrinter;->elementNesting:I

    aget-object v2, v0, v1

    iput-object v2, p0, Lgnu/xml/XMLPrinter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    .line 594
    aput-object v5, v0, v1

    .line 595
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->elementNameStack:[Ljava/lang/Object;

    aput-object v5, v0, v1

    return-void
.end method

.method public endEntity()V
    .locals 0

    return-void
.end method

.method protected endNumber()V
    .locals 0

    .line 259
    invoke-virtual {p0}, Lgnu/xml/XMLPrinter;->writeWordEnd()V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 924
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serialization error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x5d

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getHtmlTag(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 521
    instance-of v0, p1, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_1

    .line 523
    check-cast p1, Lgnu/mapping/Symbol;

    .line 524
    invoke-virtual {p1}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://www.w3.org/1999/xhtml"

    if-eq v0, v1, :cond_0

    .line 525
    iget-boolean v1, p0, Lgnu/xml/XMLPrinter;->isHtmlOrXhtml:Z

    if-eqz v1, :cond_2

    const-string v1, ""

    if-ne v0, v1, :cond_2

    .line 527
    :cond_0
    invoke-virtual {p1}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 529
    :cond_1
    iget-boolean v0, p0, Lgnu/xml/XMLPrinter;->isHtmlOrXhtml:Z

    if-eqz v0, :cond_2

    .line 530
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public ignoring()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method mustHexEscape(I)Z
    .locals 1

    const/16 v0, 0x7f

    if-lt p1, v0, :cond_0

    const/16 v0, 0x9f

    if-le p1, v0, :cond_2

    .line 160
    iget-boolean v0, p0, Lgnu/xml/XMLPrinter;->escapeNonAscii:Z

    if-nez v0, :cond_2

    :cond_0
    const/16 v0, 0x2028

    if-eq p1, v0, :cond_2

    const/16 v0, 0x20

    if-ge p1, v0, :cond_1

    iget-boolean v0, p0, Lgnu/xml/XMLPrinter;->inAttribute:Z

    if-nez v0, :cond_2

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public print(Ljava/lang/Object;)V
    .locals 2

    .line 712
    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_0

    .line 713
    check-cast p1, Ljava/math/BigDecimal;

    invoke-static {p1}, Lgnu/xml/XMLPrinter;->formatDecimal(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 714
    :cond_0
    instance-of v0, p1, Ljava/lang/Double;

    if-nez v0, :cond_2

    instance-of v0, p1, Lgnu/math/DFloNum;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 716
    :cond_1
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_3

    .line 717
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Lgnu/xml/XMLPrinter;->formatFloat(F)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 715
    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lgnu/xml/XMLPrinter;->formatDouble(D)Ljava/lang/String;

    move-result-object p1

    :cond_3
    :goto_1
    if-nez p1, :cond_4

    const-string p1, "(null)"

    goto :goto_2

    .line 718
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {p0, p1}, Lgnu/xml/XMLPrinter;->write(Ljava/lang/String;)V

    return-void
.end method

.method setIndentMode()V
    .locals 3

    .line 287
    sget-object v0, Lgnu/xml/XMLPrinter;->indentLoc:Lgnu/mapping/ThreadLocation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgnu/mapping/ThreadLocation;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 288
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v0, -0x1

    if-nez v1, :cond_1

    .line 290
    iput v0, p0, Lgnu/xml/XMLPrinter;->printIndent:I

    goto :goto_2

    :cond_1
    const-string v2, "pretty"

    .line 291
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    .line 292
    iput v0, p0, Lgnu/xml/XMLPrinter;->printIndent:I

    goto :goto_2

    :cond_2
    const-string v2, "always"

    .line 293
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "yes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 296
    :cond_3
    iput v0, p0, Lgnu/xml/XMLPrinter;->printIndent:I

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v0, 0x1

    .line 294
    iput v0, p0, Lgnu/xml/XMLPrinter;->printIndent:I

    :goto_2
    return-void
.end method

.method public setPrintXMLdecl(Z)V
    .locals 0

    .line 30
    iput-boolean p1, p0, Lgnu/xml/XMLPrinter;->printXMLdecl:Z

    return-void
.end method

.method public setStyle(Ljava/lang/Object;)V
    .locals 4

    .line 136
    iput-object p1, p0, Lgnu/xml/XMLPrinter;->style:Ljava/lang/Object;

    .line 137
    iget-boolean v0, p0, Lgnu/xml/XMLPrinter;->canonicalize:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/xml/XMLPrinter;->useEmptyElementTag:I

    const-string v0, "html"

    .line 138
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    .line 140
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->isHtml:Z

    .line 141
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->isHtmlOrXhtml:Z

    .line 142
    iput v2, p0, Lgnu/xml/XMLPrinter;->useEmptyElementTag:I

    .line 144
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    sget-object v3, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    if-ne v0, v3, :cond_1

    .line 145
    sget-object v0, Lgnu/kawa/xml/XmlNamespace;->HTML_BINDINGS:Lgnu/xml/NamespaceBinding;

    iput-object v0, p0, Lgnu/xml/XMLPrinter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    goto :goto_0

    .line 147
    :cond_0
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    sget-object v3, Lgnu/kawa/xml/XmlNamespace;->HTML_BINDINGS:Lgnu/xml/NamespaceBinding;

    if-ne v0, v3, :cond_1

    .line 148
    sget-object v0, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    iput-object v0, p0, Lgnu/xml/XMLPrinter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    :cond_1
    :goto_0
    const-string v0, "xhtml"

    .line 149
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->isHtmlOrXhtml:Z

    .line 152
    iput v2, p0, Lgnu/xml/XMLPrinter;->useEmptyElementTag:I

    :cond_2
    const-string v0, "plain"

    .line 154
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 155
    iput-boolean p1, p0, Lgnu/xml/XMLPrinter;->escapeText:Z

    :cond_3
    return-void
.end method

.method public startAttribute(Ljava/lang/Object;)V
    .locals 2

    .line 602
    iget-boolean v0, p0, Lgnu/xml/XMLPrinter;->inStartTag:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lgnu/xml/XMLPrinter;->strict:Z

    if-eqz v0, :cond_0

    const-string v0, "attribute not in element"

    const-string v1, "SENR0001"

    .line 603
    invoke-virtual {p0, v0, v1}, Lgnu/xml/XMLPrinter;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    :cond_0
    iget-boolean v0, p0, Lgnu/xml/XMLPrinter;->inAttribute:Z

    if-eqz v0, :cond_1

    .line 605
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lgnu/text/PrettyWriter;->write(I)V

    :cond_1
    const/4 v0, 0x1

    .line 606
    iput-boolean v0, p0, Lgnu/xml/XMLPrinter;->inAttribute:Z

    .line 607
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lgnu/text/PrettyWriter;->write(I)V

    .line 608
    iget v0, p0, Lgnu/xml/XMLPrinter;->printIndent:I

    if-ltz v0, :cond_2

    .line 609
    invoke-virtual {p0}, Lgnu/xml/XMLPrinter;->writeBreakFill()V

    .line 610
    :cond_2
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 611
    iget-object p1, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string v0, "=\""

    invoke-virtual {p1, v0}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 612
    iput v1, p0, Lgnu/xml/XMLPrinter;->prev:I

    return-void
.end method

.method public startDocument()V
    .locals 2

    .line 301
    iget-boolean v0, p0, Lgnu/xml/XMLPrinter;->printXMLdecl:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 305
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->needXMLdecl:Z

    .line 307
    :cond_0
    invoke-virtual {p0}, Lgnu/xml/XMLPrinter;->setIndentMode()V

    .line 308
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->inDocument:Z

    .line 309
    iget v0, p0, Lgnu/xml/XMLPrinter;->printIndent:I

    if-ltz v0, :cond_1

    iget-boolean v0, p0, Lgnu/xml/XMLPrinter;->needXMLdecl:Z

    if-nez v0, :cond_1

    const/4 v0, 0x2

    const-string v1, ""

    .line 310
    invoke-virtual {p0, v1, v1, v0}, Lgnu/xml/XMLPrinter;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public startElement(Ljava/lang/Object;)V
    .locals 12

    .line 348
    invoke-virtual {p0}, Lgnu/xml/XMLPrinter;->closeTag()V

    .line 349
    iget v0, p0, Lgnu/xml/XMLPrinter;->elementNesting:I

    if-nez v0, :cond_4

    .line 351
    iget-boolean v0, p0, Lgnu/xml/XMLPrinter;->inDocument:Z

    if-nez v0, :cond_0

    .line 352
    invoke-virtual {p0}, Lgnu/xml/XMLPrinter;->setIndentMode()V

    .line 353
    :cond_0
    iget v0, p0, Lgnu/xml/XMLPrinter;->prev:I

    const/4 v1, -0x7

    if-ne v0, v1, :cond_1

    const/16 v0, 0xa

    .line 354
    invoke-virtual {p0, v0}, Lgnu/xml/XMLPrinter;->write(I)V

    .line 355
    :cond_1
    sget-object v0, Lgnu/xml/XMLPrinter;->doctypeSystem:Lgnu/mapping/ThreadLocation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgnu/mapping/ThreadLocation;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 358
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 359
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 361
    sget-object v2, Lgnu/xml/XMLPrinter;->doctypePublic:Lgnu/mapping/ThreadLocation;

    invoke-virtual {v2, v1}, Lgnu/mapping/ThreadLocation;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 362
    iget-object v3, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string v4, "<!DOCTYPE "

    invoke-virtual {v3, v4}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 363
    iget-object v3, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    if-nez v2, :cond_2

    goto :goto_0

    .line 364
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_3

    .line 366
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 368
    iget-object v2, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string v3, " PUBLIC \""

    invoke-virtual {v2, v3}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 369
    iget-object v2, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v2, v1}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 370
    iget-object v1, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string v2, "\" \""

    invoke-virtual {v1, v2}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 374
    :cond_3
    iget-object v1, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string v2, " SYSTEM \""

    invoke-virtual {v1, v2}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 376
    :goto_1
    iget-object v1, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v1, v0}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string v1, "\">"

    invoke-virtual {v0, v1}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p0}, Lgnu/xml/XMLPrinter;->println()V

    .line 382
    :cond_4
    iget v0, p0, Lgnu/xml/XMLPrinter;->printIndent:I

    const/4 v1, 0x2

    const-string v2, ""

    if-ltz v0, :cond_8

    .line 384
    iget v3, p0, Lgnu/xml/XMLPrinter;->prev:I

    const/4 v4, -0x3

    if-eq v3, v4, :cond_5

    const/4 v4, -0x4

    if-eq v3, v4, :cond_5

    const/4 v4, -0x5

    if-ne v3, v4, :cond_7

    :cond_5
    if-lez v0, :cond_6

    const/16 v0, 0x52

    goto :goto_2

    :cond_6
    const/16 v0, 0x4e

    .line 385
    :goto_2
    invoke-virtual {p0, v0}, Lgnu/xml/XMLPrinter;->writeBreak(I)V

    .line 387
    :cond_7
    invoke-virtual {p0, v2, v2, v1}, Lgnu/xml/XMLPrinter;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 389
    :cond_8
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const/16 v3, 0x3c

    invoke-virtual {v0, v3}, Lgnu/text/PrettyWriter;->write(I)V

    .line 390
    invoke-virtual {p0, p1}, Lgnu/xml/XMLPrinter;->writeQName(Ljava/lang/Object;)V

    .line 391
    iget v0, p0, Lgnu/xml/XMLPrinter;->printIndent:I

    if-ltz v0, :cond_9

    iget-boolean v0, p0, Lgnu/xml/XMLPrinter;->indentAttributes:Z

    if-eqz v0, :cond_9

    .line 392
    invoke-virtual {p0, v2, v2, v1}, Lgnu/xml/XMLPrinter;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 393
    :cond_9
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->elementNameStack:[Ljava/lang/Object;

    iget v1, p0, Lgnu/xml/XMLPrinter;->elementNesting:I

    aput-object p1, v0, v1

    .line 395
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->namespaceSaveStack:[Lgnu/xml/NamespaceBinding;

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/xml/XMLPrinter;->elementNesting:I

    iget-object v2, p0, Lgnu/xml/XMLPrinter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    aput-object v2, v0, v1

    .line 396
    instance-of v0, p1, Lgnu/xml/XName;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    .line 398
    move-object v0, p1

    check-cast v0, Lgnu/xml/XName;

    iget-object v0, v0, Lgnu/xml/XName;->namespaceNodes:Lgnu/xml/NamespaceBinding;

    .line 399
    iget-object v3, p0, Lgnu/xml/XMLPrinter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    invoke-static {v0, v3}, Lgnu/xml/NamespaceBinding;->commonAncestor(Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object v3

    if-nez v0, :cond_a

    const/4 v4, 0x0

    goto :goto_3

    .line 401
    :cond_a
    invoke-virtual {v0, v3}, Lgnu/xml/NamespaceBinding;->count(Lgnu/xml/NamespaceBinding;)I

    move-result v4

    .line 403
    :goto_3
    new-array v4, v4, [Lgnu/xml/NamespaceBinding;

    .line 405
    iget-boolean v5, p0, Lgnu/xml/XMLPrinter;->canonicalize:Z

    move-object v6, v0

    const/4 v7, 0x0

    :goto_4
    if-eq v6, v3, :cond_11

    .line 411
    invoke-virtual {v6}, Lgnu/xml/NamespaceBinding;->getUri()Ljava/lang/String;

    .line 412
    invoke-virtual {v6}, Lgnu/xml/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v8

    move v9, v7

    :goto_5
    add-int/lit8 v9, v9, -0x1

    if-ltz v9, :cond_f

    .line 415
    aget-object v10, v4, v9

    .line 417
    invoke-virtual {v10}, Lgnu/xml/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v11

    if-ne v8, v11, :cond_b

    goto :goto_8

    :cond_b
    if-nez v5, :cond_c

    goto :goto_5

    :cond_c
    if-nez v8, :cond_d

    goto :goto_6

    :cond_d
    if-eqz v11, :cond_e

    .line 428
    invoke-virtual {v8, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-gtz v11, :cond_e

    goto :goto_6

    :cond_e
    add-int/lit8 v11, v9, 0x1

    .line 430
    aput-object v10, v4, v11

    goto :goto_5

    :cond_f
    :goto_6
    if-eqz v5, :cond_10

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_10
    move v9, v7

    .line 436
    :goto_7
    aput-object v6, v4, v9

    add-int/lit8 v7, v7, 0x1

    .line 407
    :goto_8
    iget-object v6, v6, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    goto :goto_4

    :cond_11
    :goto_9
    add-int/lit8 v7, v7, -0x1

    const-string v5, "xmlns"

    const-string v6, "xmlns:"

    const/16 v8, 0x20

    if-ltz v7, :cond_16

    .line 444
    aget-object v9, v4, v7

    .line 445
    iget-object v10, v9, Lgnu/xml/NamespaceBinding;->prefix:Ljava/lang/String;

    .line 446
    iget-object v9, v9, Lgnu/xml/NamespaceBinding;->uri:Ljava/lang/String;

    .line 447
    iget-object v11, p0, Lgnu/xml/XMLPrinter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    invoke-virtual {v11, v10}, Lgnu/xml/NamespaceBinding;->resolve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-ne v9, v11, :cond_12

    goto :goto_9

    :cond_12
    if-nez v9, :cond_13

    if-eqz v10, :cond_13

    .line 450
    iget-boolean v11, p0, Lgnu/xml/XMLPrinter;->undeclareNamespaces:Z

    if-nez v11, :cond_13

    goto :goto_9

    .line 452
    :cond_13
    iget-object v11, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v11, v8}, Lgnu/text/PrettyWriter;->write(I)V

    if-nez v10, :cond_14

    .line 454
    iget-object v6, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v6, v5}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    goto :goto_a

    .line 457
    :cond_14
    iget-object v5, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v5, v6}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 458
    iget-object v5, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v5, v10}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 460
    :goto_a
    iget-object v5, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string v6, "=\""

    invoke-virtual {v5, v6}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 461
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->inAttribute:Z

    if-eqz v9, :cond_15

    .line 463
    invoke-virtual {p0, v9}, Lgnu/xml/XMLPrinter;->write(Ljava/lang/String;)V

    .line 464
    :cond_15
    iput-boolean v2, p0, Lgnu/xml/XMLPrinter;->inAttribute:Z

    .line 465
    iget-object v5, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const/16 v6, 0x22

    invoke-virtual {v5, v6}, Lgnu/text/PrettyWriter;->write(I)V

    goto :goto_9

    .line 467
    :cond_16
    iget-boolean v4, p0, Lgnu/xml/XMLPrinter;->undeclareNamespaces:Z

    if-eqz v4, :cond_19

    .line 472
    iget-object v4, p0, Lgnu/xml/XMLPrinter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    :goto_b
    if-eq v4, v3, :cond_19

    .line 475
    iget-object v7, v4, Lgnu/xml/NamespaceBinding;->prefix:Ljava/lang/String;

    .line 476
    iget-object v9, v4, Lgnu/xml/NamespaceBinding;->uri:Ljava/lang/String;

    if-eqz v9, :cond_18

    invoke-virtual {v0, v7}, Lgnu/xml/NamespaceBinding;->resolve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_18

    .line 478
    iget-object v9, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v9, v8}, Lgnu/text/PrettyWriter;->write(I)V

    if-nez v7, :cond_17

    .line 480
    iget-object v7, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v7, v5}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    goto :goto_c

    .line 483
    :cond_17
    iget-object v9, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v9, v6}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 484
    iget-object v9, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v9, v7}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 486
    :goto_c
    iget-object v7, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string v9, "=\"\""

    invoke-virtual {v7, v9}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 473
    :cond_18
    iget-object v4, v4, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    goto :goto_b

    .line 490
    :cond_19
    iput-object v0, p0, Lgnu/xml/XMLPrinter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    .line 492
    :cond_1a
    iget v0, p0, Lgnu/xml/XMLPrinter;->elementNesting:I

    iget-object v3, p0, Lgnu/xml/XMLPrinter;->namespaceSaveStack:[Lgnu/xml/NamespaceBinding;

    array-length v4, v3

    if-lt v0, v4, :cond_1b

    mul-int/lit8 v4, v0, 0x2

    .line 494
    new-array v4, v4, [Lgnu/xml/NamespaceBinding;

    .line 495
    invoke-static {v3, v2, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 496
    iput-object v4, p0, Lgnu/xml/XMLPrinter;->namespaceSaveStack:[Lgnu/xml/NamespaceBinding;

    .line 497
    iget v0, p0, Lgnu/xml/XMLPrinter;->elementNesting:I

    mul-int/lit8 v3, v0, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 498
    iget-object v4, p0, Lgnu/xml/XMLPrinter;->elementNameStack:[Ljava/lang/Object;

    invoke-static {v4, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 499
    iput-object v3, p0, Lgnu/xml/XMLPrinter;->elementNameStack:[Ljava/lang/Object;

    .line 502
    :cond_1b
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->inStartTag:Z

    .line 504
    invoke-virtual {p0, p1}, Lgnu/xml/XMLPrinter;->getHtmlTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "script"

    .line 505
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "style"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 506
    :cond_1c
    iput-boolean v2, p0, Lgnu/xml/XMLPrinter;->escapeText:Z

    :cond_1d
    return-void
.end method

.method protected startNumber()V
    .locals 0

    .line 254
    invoke-direct {p0}, Lgnu/xml/XMLPrinter;->startWord()V

    return-void
.end method

.method public write(I)V
    .locals 3

    .line 169
    invoke-virtual {p0}, Lgnu/xml/XMLPrinter;->closeTag()V

    .line 170
    iget v0, p0, Lgnu/xml/XMLPrinter;->printIndent:I

    const/4 v1, 0x1

    if-ltz v0, :cond_4

    const/16 v0, 0xa

    const/16 v2, 0xd

    if-eq p1, v2, :cond_0

    if-ne p1, v0, :cond_4

    :cond_0
    if-ne p1, v0, :cond_1

    .line 174
    iget p1, p0, Lgnu/xml/XMLPrinter;->prev:I

    if-eq p1, v2, :cond_2

    :cond_1
    const/16 p1, 0x52

    .line 175
    invoke-virtual {p0, p1}, Lgnu/xml/XMLPrinter;->writeBreak(I)V

    .line 176
    :cond_2
    iget p1, p0, Lgnu/xml/XMLPrinter;->inComment:I

    if-lez p1, :cond_3

    .line 177
    iput v1, p0, Lgnu/xml/XMLPrinter;->inComment:I

    :cond_3
    return-void

    .line 181
    :cond_4
    iget-boolean v0, p0, Lgnu/xml/XMLPrinter;->escapeText:Z

    if-nez v0, :cond_5

    .line 183
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v0, p1}, Lgnu/text/PrettyWriter;->write(I)V

    .line 184
    iput p1, p0, Lgnu/xml/XMLPrinter;->prev:I

    goto/16 :goto_1

    .line 186
    :cond_5
    iget v0, p0, Lgnu/xml/XMLPrinter;->inComment:I

    if-lez v0, :cond_8

    const/16 v2, 0x2d

    if-ne p1, v2, :cond_7

    if-ne v0, v1, :cond_6

    const/4 v0, 0x2

    .line 191
    iput v0, p0, Lgnu/xml/XMLPrinter;->inComment:I

    goto :goto_0

    .line 193
    :cond_6
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lgnu/text/PrettyWriter;->write(I)V

    goto :goto_0

    .line 196
    :cond_7
    iput v1, p0, Lgnu/xml/XMLPrinter;->inComment:I

    .line 197
    :goto_0
    invoke-super {p0, p1}, Lgnu/mapping/OutPort;->write(I)V

    goto/16 :goto_1

    :cond_8
    const/16 v0, 0x3b

    .line 201
    iput v0, p0, Lgnu/xml/XMLPrinter;->prev:I

    const/16 v0, 0x3c

    if-ne p1, v0, :cond_a

    .line 202
    iget-boolean v0, p0, Lgnu/xml/XMLPrinter;->isHtml:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lgnu/xml/XMLPrinter;->inAttribute:Z

    if-nez v0, :cond_a

    .line 203
    :cond_9
    iget-object p1, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string v0, "&lt;"

    invoke-virtual {p1, v0}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    const/16 v0, 0x3e

    if-ne p1, v0, :cond_b

    .line 205
    iget-object p1, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string v0, "&gt;"

    invoke-virtual {p1, v0}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_b
    const/16 v0, 0x26

    if-ne p1, v0, :cond_c

    .line 207
    iget-object p1, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string v0, "&amp;"

    invoke-virtual {p1, v0}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_c
    const/16 v0, 0x22

    if-ne p1, v0, :cond_d

    .line 208
    iget-boolean v0, p0, Lgnu/xml/XMLPrinter;->inAttribute:Z

    if-eqz v0, :cond_d

    .line 209
    iget-object p1, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string v0, "&quot;"

    invoke-virtual {p1, v0}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 210
    :cond_d
    invoke-virtual {p0, p1}, Lgnu/xml/XMLPrinter;->mustHexEscape(I)Z

    move-result v0

    if-eqz v0, :cond_10

    const v0, 0xd800

    if-lt p1, v0, :cond_f

    const v1, 0xdc00

    if-ge p1, v1, :cond_e

    int-to-char p1, p1

    .line 217
    iput-char p1, p0, Lgnu/xml/XMLPrinter;->savedHighSurrogate:C

    return-void

    :cond_e
    const v2, 0xe000

    if-ge p1, v2, :cond_f

    .line 224
    iget-char v2, p0, Lgnu/xml/XMLPrinter;->savedHighSurrogate:C

    sub-int/2addr v2, v0

    mul-int/lit16 v2, v2, 0x400

    sub-int/2addr p1, v1

    add-int/2addr v2, p1

    const/high16 p1, 0x10000

    add-int/2addr p1, v2

    const/4 v0, 0x0

    .line 226
    iput-char v0, p0, Lgnu/xml/XMLPrinter;->savedHighSurrogate:C

    .line 229
    :cond_f
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&#x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 233
    :cond_10
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v0, p1}, Lgnu/text/PrettyWriter;->write(I)V

    .line 234
    iput p1, p0, Lgnu/xml/XMLPrinter;->prev:I

    :goto_1
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 6

    const/16 v0, 0x2d

    if-lez p3, :cond_5

    .line 777
    invoke-virtual {p0}, Lgnu/xml/XMLPrinter;->closeTag()V

    add-int/2addr p3, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge p2, p3, :cond_4

    add-int/lit8 v3, p2, 0x1

    .line 782
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    .line 783
    invoke-virtual {p0, p2}, Lgnu/xml/XMLPrinter;->mustHexEscape(I)Z

    move-result v4

    if-nez v4, :cond_2

    iget v4, p0, Lgnu/xml/XMLPrinter;->inComment:I

    if-lez v4, :cond_0

    if-eq p2, v0, :cond_2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_0
    const/16 v4, 0x3c

    if-eq p2, v4, :cond_2

    const/16 v4, 0x3e

    if-eq p2, v4, :cond_2

    const/16 v4, 0x26

    if-eq p2, v4, :cond_2

    iget-boolean v4, p0, Lgnu/xml/XMLPrinter;->inAttribute:Z

    if-eqz v4, :cond_1

    const/16 v4, 0x22

    if-eq p2, v4, :cond_2

    const/16 v4, 0x20

    if-ge p2, v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    if-lez v2, :cond_3

    .line 789
    iget-object v4, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    add-int/lit8 v5, v3, -0x1

    sub-int/2addr v5, v2

    invoke-virtual {v4, p1, v5, v2}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;II)V

    .line 790
    :cond_3
    invoke-virtual {p0, p2}, Lgnu/xml/XMLPrinter;->write(I)V

    const/4 v2, 0x0

    :goto_2
    move p2, v3

    goto :goto_0

    :cond_4
    if-lez v2, :cond_5

    .line 797
    iget-object p2, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    sub-int/2addr p3, v2

    invoke-virtual {p2, p1, p3, v2}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;II)V

    .line 799
    :cond_5
    iput v0, p0, Lgnu/xml/XMLPrinter;->prev:I

    return-void
.end method

.method public write([CII)V
    .locals 6

    const/16 v0, 0x2d

    if-lez p3, :cond_5

    .line 806
    invoke-virtual {p0}, Lgnu/xml/XMLPrinter;->closeTag()V

    add-int/2addr p3, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge p2, p3, :cond_4

    add-int/lit8 v3, p2, 0x1

    .line 811
    aget-char p2, p1, p2

    .line 812
    invoke-virtual {p0, p2}, Lgnu/xml/XMLPrinter;->mustHexEscape(I)Z

    move-result v4

    if-nez v4, :cond_2

    iget v4, p0, Lgnu/xml/XMLPrinter;->inComment:I

    if-lez v4, :cond_0

    if-eq p2, v0, :cond_2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_0
    const/16 v4, 0x3c

    if-eq p2, v4, :cond_2

    const/16 v4, 0x3e

    if-eq p2, v4, :cond_2

    const/16 v4, 0x26

    if-eq p2, v4, :cond_2

    iget-boolean v4, p0, Lgnu/xml/XMLPrinter;->inAttribute:Z

    if-eqz v4, :cond_1

    const/16 v4, 0x22

    if-eq p2, v4, :cond_2

    const/16 v4, 0x20

    if-ge p2, v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    if-lez v2, :cond_3

    .line 818
    iget-object v4, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    add-int/lit8 v5, v3, -0x1

    sub-int/2addr v5, v2

    invoke-virtual {v4, p1, v5, v2}, Lgnu/text/PrettyWriter;->write([CII)V

    .line 819
    :cond_3
    invoke-virtual {p0, p2}, Lgnu/xml/XMLPrinter;->write(I)V

    const/4 v2, 0x0

    :goto_2
    move p2, v3

    goto :goto_0

    :cond_4
    if-lez v2, :cond_5

    .line 826
    iget-object p2, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    sub-int/2addr p3, v2

    invoke-virtual {p2, p1, p3, v2}, Lgnu/text/PrettyWriter;->write([CII)V

    .line 828
    :cond_5
    iput v0, p0, Lgnu/xml/XMLPrinter;->prev:I

    return-void
.end method

.method public writeBaseUri(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public writeBoolean(Z)V
    .locals 0

    .line 247
    invoke-direct {p0}, Lgnu/xml/XMLPrinter;->startWord()V

    .line 248
    invoke-super {p0, p1}, Lgnu/mapping/OutPort;->print(Z)V

    .line 249
    invoke-virtual {p0}, Lgnu/xml/XMLPrinter;->writeWordEnd()V

    return-void
.end method

.method public writeCDATA([CII)V
    .locals 5

    .line 876
    iget-boolean v0, p0, Lgnu/xml/XMLPrinter;->canonicalizeCDATA:Z

    if-eqz v0, :cond_0

    .line 878
    invoke-virtual {p0, p1, p2, p3}, Lgnu/xml/XMLPrinter;->write([CII)V

    return-void

    .line 881
    :cond_0
    invoke-virtual {p0}, Lgnu/xml/XMLPrinter;->closeTag()V

    .line 882
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string v1, "<![CDATA["

    invoke-virtual {v0, v1}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    add-int v0, p2, p3

    move v1, p3

    move p3, p2

    :goto_0
    add-int/lit8 v2, v0, -0x2

    const/16 v3, 0x3e

    if-ge p2, v2, :cond_3

    .line 888
    aget-char v2, p1, p2

    const/16 v4, 0x5d

    if-ne v2, v4, :cond_2

    add-int/lit8 v2, p2, 0x1

    aget-char v2, p1, v2

    if-ne v2, v4, :cond_2

    add-int/lit8 v2, p2, 0x2

    aget-char v4, p1, v2

    if-ne v4, v3, :cond_2

    if-le p2, p3, :cond_1

    .line 891
    iget-object v1, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    sub-int v3, p2, p3

    invoke-virtual {v1, p1, p3, v3}, Lgnu/text/PrettyWriter;->write([CII)V

    :cond_1
    const-string p3, "]]]><![CDATA[]>"

    .line 892
    invoke-virtual {p0, p3}, Lgnu/xml/XMLPrinter;->print(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x3

    sub-int p3, v0, p2

    move v1, p3

    move p3, p2

    move p2, v2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 898
    :cond_3
    iget-object p2, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {p2, p1, p3, v1}, Lgnu/text/PrettyWriter;->write([CII)V

    .line 899
    iget-object p1, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string p2, "]]>"

    invoke-virtual {p1, p2}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 900
    iput v3, p0, Lgnu/xml/XMLPrinter;->prev:I

    return-void
.end method

.method public writeComment(Ljava/lang/String;)V
    .locals 0

    .line 862
    invoke-virtual {p0}, Lgnu/xml/XMLPrinter;->beginComment()V

    .line 863
    invoke-virtual {p0, p1}, Lgnu/xml/XMLPrinter;->write(Ljava/lang/String;)V

    .line 864
    invoke-virtual {p0}, Lgnu/xml/XMLPrinter;->endComment()V

    return-void
.end method

.method public writeComment([CII)V
    .locals 0

    .line 869
    invoke-virtual {p0}, Lgnu/xml/XMLPrinter;->beginComment()V

    .line 870
    invoke-virtual {p0, p1, p2, p3}, Lgnu/xml/XMLPrinter;->write([CII)V

    .line 871
    invoke-virtual {p0}, Lgnu/xml/XMLPrinter;->endComment()V

    return-void
.end method

.method public writeDouble(D)V
    .locals 1

    .line 630
    invoke-direct {p0}, Lgnu/xml/XMLPrinter;->startWord()V

    .line 631
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    invoke-static {p1, p2}, Lgnu/xml/XMLPrinter;->formatDouble(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public writeFloat(F)V
    .locals 1

    .line 636
    invoke-direct {p0}, Lgnu/xml/XMLPrinter;->startWord()V

    .line 637
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    invoke-static {p1}, Lgnu/xml/XMLPrinter;->formatFloat(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 3

    .line 723
    instance-of v0, p1, Lgnu/lists/SeqPosition;

    const/16 v1, 0x2d

    if-eqz v0, :cond_1

    .line 725
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v0}, Lgnu/text/PrettyWriter;->clearWordEnd()V

    .line 726
    check-cast p1, Lgnu/lists/SeqPosition;

    .line 727
    iget-object v0, p1, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    iget v2, p1, Lgnu/lists/SeqPosition;->ipos:I

    invoke-virtual {v0, v2, p0}, Lgnu/lists/AbstractSequence;->consumeNext(ILgnu/lists/Consumer;)Z

    .line 728
    iget-object p1, p1, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    instance-of p1, p1, Lgnu/xml/NodeTree;

    if-eqz p1, :cond_0

    .line 729
    iput v1, p0, Lgnu/xml/XMLPrinter;->prev:I

    :cond_0
    return-void

    .line 732
    :cond_1
    instance-of v0, p1, Lgnu/lists/Consumable;

    if-eqz v0, :cond_2

    instance-of v0, p1, Lgnu/lists/UnescapedData;

    if-nez v0, :cond_2

    .line 734
    check-cast p1, Lgnu/lists/Consumable;

    invoke-interface {p1, p0}, Lgnu/lists/Consumable;->consume(Lgnu/lists/Consumer;)V

    return-void

    .line 737
    :cond_2
    instance-of v0, p1, Lgnu/expr/Keyword;

    if-eqz v0, :cond_3

    .line 739
    check-cast p1, Lgnu/expr/Keyword;

    invoke-virtual {p1}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/xml/XMLPrinter;->startAttribute(Ljava/lang/Object;)V

    const/4 p1, -0x6

    .line 740
    iput p1, p0, Lgnu/xml/XMLPrinter;->prev:I

    return-void

    .line 743
    :cond_3
    invoke-virtual {p0}, Lgnu/xml/XMLPrinter;->closeTag()V

    .line 744
    instance-of v0, p1, Lgnu/lists/UnescapedData;

    if-eqz v0, :cond_4

    .line 746
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v0}, Lgnu/text/PrettyWriter;->clearWordEnd()V

    .line 747
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    check-cast p1, Lgnu/lists/UnescapedData;

    invoke-virtual {p1}, Lgnu/lists/UnescapedData;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 748
    iput v1, p0, Lgnu/xml/XMLPrinter;->prev:I

    goto :goto_0

    .line 750
    :cond_4
    instance-of v0, p1, Lgnu/text/Char;

    if-eqz v0, :cond_5

    .line 751
    check-cast p1, Lgnu/text/Char;

    invoke-virtual {p1}, Lgnu/text/Char;->intValue()I

    move-result p1

    invoke-static {p1, p0}, Lgnu/text/Char;->print(ILgnu/lists/Consumer;)V

    goto :goto_0

    .line 754
    :cond_5
    invoke-direct {p0}, Lgnu/xml/XMLPrinter;->startWord()V

    const/16 v0, 0x20

    .line 755
    iput v0, p0, Lgnu/xml/XMLPrinter;->prev:I

    .line 756
    invoke-virtual {p0, p1}, Lgnu/xml/XMLPrinter;->print(Ljava/lang/Object;)V

    .line 757
    invoke-virtual {p0}, Lgnu/xml/XMLPrinter;->writeWordEnd()V

    const/4 p1, -0x2

    .line 758
    iput p1, p0, Lgnu/xml/XMLPrinter;->prev:I

    :goto_0
    return-void
.end method

.method public writePosition(Lgnu/lists/AbstractSequence;I)V
    .locals 0

    .line 833
    invoke-virtual {p1, p2, p0}, Lgnu/lists/AbstractSequence;->consumeNext(ILgnu/lists/Consumer;)Z

    return-void
.end method

.method public writeProcessingInstruction(Ljava/lang/String;[CII)V
    .locals 2

    const-string v0, "xml"

    .line 906
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 907
    iput-boolean v0, p0, Lgnu/xml/XMLPrinter;->needXMLdecl:Z

    .line 908
    :cond_0
    invoke-virtual {p0}, Lgnu/xml/XMLPrinter;->closeTag()V

    .line 909
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string v1, "<?"

    invoke-virtual {v0, v1}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 910
    invoke-virtual {p0, p1}, Lgnu/xml/XMLPrinter;->print(Ljava/lang/String;)V

    const/16 p1, 0x20

    .line 911
    invoke-virtual {p0, p1}, Lgnu/xml/XMLPrinter;->print(C)V

    .line 912
    iget-object p1, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {p1, p2, p3, p4}, Lgnu/text/PrettyWriter;->write([CII)V

    .line 913
    iget-object p1, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string p2, "?>"

    invoke-virtual {p1, p2}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    const/4 p1, -0x7

    .line 914
    iput p1, p0, Lgnu/xml/XMLPrinter;->prev:I

    return-void
.end method

.method protected writeQName(Ljava/lang/Object;)V
    .locals 2

    .line 331
    instance-of v0, p1, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_1

    .line 333
    check-cast p1, Lgnu/mapping/Symbol;

    .line 334
    invoke-virtual {p1}, Lgnu/mapping/Symbol;->getPrefix()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 337
    iget-object v1, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v1, v0}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Lgnu/text/PrettyWriter;->write(I)V

    .line 340
    :cond_0
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {p1}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 343
    :cond_1
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    if-nez p1, :cond_2

    const-string p1, "{null name}"

    goto :goto_0

    :cond_2
    check-cast p1, Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, p1}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
