.class public Lgnu/kawa/xslt/XslTranslator;
.super Lgnu/text/Lexer;
.source "XslTranslator.java"

# interfaces
.implements Lgnu/lists/Consumer;


# static fields
.field static final XSL_TRANSFORM_URI:Ljava/lang/String; = "http://www.w3.org/1999/XSL/Transform"

.field static final applyTemplatesMethod:Lgnu/bytecode/Method;

.field static final applyTemplatesProc:Lgnu/expr/PrimProcedure;

.field static final defineTemplateMethod:Lgnu/bytecode/Method;

.field static final defineTemplateProc:Lgnu/expr/PrimProcedure;

.field static final runStylesheetMethod:Lgnu/bytecode/Method;

.field static final runStylesheetProc:Lgnu/expr/PrimProcedure;

.field static final typeTemplateTable:Lgnu/bytecode/ClassType;

.field static final typeXSLT:Lgnu/bytecode/ClassType;


# instance fields
.field attributeType:Ljava/lang/Object;

.field attributeValue:Ljava/lang/StringBuffer;

.field comp:Lgnu/expr/Compilation;

.field consumerDecl:Lgnu/expr/Declaration;

.field in:Lgnu/mapping/InPort;

.field inAttribute:Z

.field inTemplate:Z

.field interpreter:Lgnu/kawa/xslt/XSLT;

.field mexp:Lgnu/expr/ModuleExp;

.field nesting:Ljava/lang/StringBuffer;

.field preserveSpace:Z

.field templateLambda:Lgnu/expr/LambdaExp;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "gnu.kawa.xslt.XSLT"

    .line 519
    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xslt/XslTranslator;->typeXSLT:Lgnu/bytecode/ClassType;

    const-string v1, "gnu.kawa.xslt.TemplateTable"

    .line 521
    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    sput-object v1, Lgnu/kawa/xslt/XslTranslator;->typeTemplateTable:Lgnu/bytecode/ClassType;

    const-string v1, "defineTemplate"

    const/4 v2, 0x5

    .line 523
    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    sput-object v1, Lgnu/kawa/xslt/XslTranslator;->defineTemplateMethod:Lgnu/bytecode/Method;

    const-string v2, "runStylesheet"

    const/4 v3, 0x0

    .line 525
    invoke-virtual {v0, v2, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    sput-object v2, Lgnu/kawa/xslt/XslTranslator;->runStylesheetMethod:Lgnu/bytecode/Method;

    .line 527
    new-instance v3, Lgnu/expr/PrimProcedure;

    invoke-direct {v3, v1}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;)V

    sput-object v3, Lgnu/kawa/xslt/XslTranslator;->defineTemplateProc:Lgnu/expr/PrimProcedure;

    .line 529
    new-instance v1, Lgnu/expr/PrimProcedure;

    invoke-direct {v1, v2}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;)V

    sput-object v1, Lgnu/kawa/xslt/XslTranslator;->runStylesheetProc:Lgnu/expr/PrimProcedure;

    const-string v1, "applyTemplates"

    const/4 v2, 0x2

    .line 531
    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xslt/XslTranslator;->applyTemplatesMethod:Lgnu/bytecode/Method;

    .line 533
    new-instance v1, Lgnu/expr/PrimProcedure;

    invoke-direct {v1, v0}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;)V

    sput-object v1, Lgnu/kawa/xslt/XslTranslator;->applyTemplatesProc:Lgnu/expr/PrimProcedure;

    return-void
.end method

.method constructor <init>(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;Lgnu/kawa/xslt/XSLT;)V
    .locals 1

    .line 45
    invoke-direct {p0, p1, p2}, Lgnu/text/Lexer;-><init>(Lgnu/text/LineBufferedReader;Lgnu/text/SourceMessages;)V

    .line 23
    new-instance p2, Ljava/lang/StringBuffer;

    const/16 v0, 0x64

    invoke-direct {p2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object p2, p0, Lgnu/kawa/xslt/XslTranslator;->nesting:Ljava/lang/StringBuffer;

    .line 32
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object p2, p0, Lgnu/kawa/xslt/XslTranslator;->attributeValue:Ljava/lang/StringBuffer;

    .line 46
    iput-object p3, p0, Lgnu/kawa/xslt/XslTranslator;->interpreter:Lgnu/kawa/xslt/XSLT;

    .line 47
    iput-object p1, p0, Lgnu/kawa/xslt/XslTranslator;->in:Lgnu/mapping/InPort;

    return-void
.end method

.method public static isXslTag(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 122
    instance-of v0, p0, Lgnu/expr/QuoteExp;

    if-eqz v0, :cond_0

    .line 123
    check-cast p0, Lgnu/expr/QuoteExp;

    invoke-virtual {p0}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object p0

    .line 124
    :cond_0
    instance-of v0, p0, Lgnu/mapping/Symbol;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    .line 126
    :cond_1
    check-cast p0, Lgnu/mapping/Symbol;

    .line 127
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    const-string v2, "http://www.w3.org/1999/XSL/Transform"

    if-eq v0, v2, :cond_2

    return-object v1

    .line 129
    :cond_2
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public append(C)Lgnu/lists/Consumer;
    .locals 1

    .line 342
    iget-boolean v0, p0, Lgnu/kawa/xslt/XslTranslator;->inAttribute:Z

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->attributeValue:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 345
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/kawa/xslt/XslTranslator;->push(Ljava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Lgnu/lists/Consumer;
    .locals 1

    .line 351
    iget-boolean v0, p0, Lgnu/kawa/xslt/XslTranslator;->inAttribute:Z

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->attributeValue:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 354
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/kawa/xslt/XslTranslator;->push(Ljava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Lgnu/lists/Consumer;
    .locals 0

    .line 360
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/kawa/xslt/XslTranslator;->append(Ljava/lang/CharSequence;)Lgnu/lists/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    invoke-virtual {p0, p1}, Lgnu/kawa/xslt/XslTranslator;->append(C)Lgnu/lists/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    invoke-virtual {p0, p1}, Lgnu/kawa/xslt/XslTranslator;->append(Ljava/lang/CharSequence;)Lgnu/lists/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    invoke-virtual {p0, p1, p2, p3}, Lgnu/kawa/xslt/XslTranslator;->append(Ljava/lang/CharSequence;II)Lgnu/lists/Consumer;

    move-result-object p1

    return-object p1
.end method

.method append(Lgnu/expr/Expression;)V
    .locals 0

    return-void
.end method

.method public endAttribute()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lgnu/expr/Expression;

    .line 176
    new-instance v1, Lgnu/expr/QuoteExp;

    iget-object v2, p0, Lgnu/kawa/xslt/XslTranslator;->attributeType:Ljava/lang/Object;

    invoke-direct {v1, v2}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 177
    new-instance v1, Lgnu/expr/QuoteExp;

    iget-object v3, p0, Lgnu/kawa/xslt/XslTranslator;->attributeValue:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 178
    new-instance v1, Lgnu/expr/ApplyExp;

    sget-object v4, Lgnu/kawa/xml/MakeAttribute;->makeAttributeExp:Lgnu/expr/QuoteExp;

    invoke-direct {v1, v4, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    invoke-virtual {p0, v1}, Lgnu/kawa/xslt/XslTranslator;->push(Lgnu/expr/Expression;)V

    .line 179
    iget-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->nesting:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 180
    iput-boolean v2, p0, Lgnu/kawa/xslt/XslTranslator;->inAttribute:Z

    return-void
.end method

.method public endDocument()V
    .locals 0

    return-void
.end method

.method public endElement()V
    .locals 9

    .line 185
    invoke-virtual {p0}, Lgnu/kawa/xslt/XslTranslator;->maybeSkipWhitespace()V

    .line 186
    iget-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->nesting:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 187
    iget-object v2, p0, Lgnu/kawa/xslt/XslTranslator;->nesting:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    .line 188
    iget-object v3, p0, Lgnu/kawa/xslt/XslTranslator;->nesting:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 189
    iget-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v0, v0, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v0, v2}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/expr/Expression;

    .line 190
    invoke-static {v0}, Lgnu/kawa/xslt/XslTranslator;->isXslTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "select"

    const/4 v4, 0x0

    const-string v5, ""

    const-string v6, "value-of"

    if-ne v0, v6, :cond_0

    add-int/2addr v2, v1

    .line 193
    invoke-virtual {p0, v5, v3, v2}, Lgnu/kawa/xslt/XslTranslator;->popMatchingAttribute(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 196
    invoke-virtual {p0, v0}, Lgnu/kawa/xslt/XslTranslator;->parseXPath(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 197
    new-instance v2, Lgnu/expr/ApplyExp;

    sget-object v3, Lgnu/xquery/lang/XQParser;->makeText:Lgnu/expr/Expression;

    new-array v1, v1, [Lgnu/expr/Expression;

    aput-object v0, v1, v4

    invoke-direct {v2, v3, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 198
    iget-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v0, v0, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 199
    invoke-virtual {p0, v2}, Lgnu/kawa/xslt/XslTranslator;->push(Lgnu/expr/Expression;)V

    return-void

    :cond_0
    const-string v6, "copy-of"

    if-ne v0, v6, :cond_1

    add-int/2addr v2, v1

    .line 205
    invoke-virtual {p0, v5, v3, v2}, Lgnu/kawa/xslt/XslTranslator;->popMatchingAttribute(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 208
    invoke-virtual {p0, v0}, Lgnu/kawa/xslt/XslTranslator;->parseXPath(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 209
    iget-object v1, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v1, v1, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 210
    invoke-virtual {p0, v0}, Lgnu/kawa/xslt/XslTranslator;->push(Lgnu/expr/Expression;)V

    return-void

    :cond_1
    const/4 v6, 0x2

    const-string v7, "mode"

    const-string v8, "apply-templates"

    if-ne v0, v8, :cond_2

    add-int/2addr v2, v1

    .line 216
    invoke-virtual {p0, v5, v3, v2}, Lgnu/kawa/xslt/XslTranslator;->popMatchingAttribute(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 217
    invoke-virtual {p0, v5, v7, v2}, Lgnu/kawa/xslt/XslTranslator;->popMatchingAttribute(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Lgnu/expr/Expression;

    .line 218
    new-instance v5, Lgnu/expr/QuoteExp;

    invoke-direct {v5, v0}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v5, v3, v4

    invoke-virtual {p0, v2}, Lgnu/kawa/xslt/XslTranslator;->resolveQNameExpression(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    aput-object v0, v3, v1

    .line 220
    iget-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v0, v0, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 221
    new-instance v0, Lgnu/expr/ApplyExp;

    new-instance v1, Lgnu/expr/QuoteExp;

    sget-object v2, Lgnu/kawa/xslt/XslTranslator;->applyTemplatesProc:Lgnu/expr/PrimProcedure;

    invoke-direct {v1, v2}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, v3}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    invoke-virtual {p0, v0}, Lgnu/kawa/xslt/XslTranslator;->push(Lgnu/expr/Expression;)V

    goto/16 :goto_3

    :cond_2
    const-string v3, "if"

    if-ne v0, v3, :cond_3

    add-int/2addr v2, v1

    const-string v0, "test"

    .line 225
    invoke-virtual {p0, v5, v0, v2}, Lgnu/kawa/xslt/XslTranslator;->popMatchingAttribute(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 226
    invoke-virtual {p0, v0}, Lgnu/kawa/xslt/XslTranslator;->parseXPath(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 227
    invoke-static {v0}, Lgnu/xquery/lang/XQParser;->booleanValue(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v0

    .line 228
    invoke-virtual {p0, v2}, Lgnu/kawa/xslt/XslTranslator;->popTemplateBody(I)Lgnu/expr/Expression;

    move-result-object v1

    .line 229
    iget-object v2, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v2, v2, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 230
    new-instance v2, Lgnu/expr/IfExp;

    sget-object v3, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    invoke-direct {v2, v0, v1, v3}, Lgnu/expr/IfExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    invoke-virtual {p0, v2}, Lgnu/kawa/xslt/XslTranslator;->push(Lgnu/expr/Expression;)V

    goto/16 :goto_3

    :cond_3
    const-string v3, "stylesheet"

    if-eq v0, v3, :cond_9

    const-string v3, "transform"

    if-ne v0, v3, :cond_4

    goto/16 :goto_2

    :cond_4
    const-string v3, "template"

    if-ne v0, v3, :cond_5

    add-int/2addr v2, v1

    const-string v0, "match"

    .line 243
    invoke-virtual {p0, v5, v0, v2}, Lgnu/kawa/xslt/XslTranslator;->popMatchingAttribute(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "name"

    .line 244
    invoke-virtual {p0, v5, v3, v2}, Lgnu/kawa/xslt/XslTranslator;->popMatchingAttribute(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v8, "priority"

    .line 245
    invoke-virtual {p0, v5, v8, v2}, Lgnu/kawa/xslt/XslTranslator;->popMatchingAttribute(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 246
    invoke-virtual {p0, v5, v7, v2}, Lgnu/kawa/xslt/XslTranslator;->popMatchingAttribute(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 247
    iget-object v7, p0, Lgnu/kawa/xslt/XslTranslator;->templateLambda:Lgnu/expr/LambdaExp;

    invoke-virtual {p0, v2}, Lgnu/kawa/xslt/XslTranslator;->popTemplateBody(I)Lgnu/expr/Expression;

    move-result-object v2

    iput-object v2, v7, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 248
    iget-object v2, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v2, v2, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    const/4 v2, 0x5

    new-array v2, v2, [Lgnu/expr/Expression;

    const-wide/16 v7, 0x0

    .line 251
    invoke-virtual {p0, v3}, Lgnu/kawa/xslt/XslTranslator;->resolveQNameExpression(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v3

    aput-object v3, v2, v4

    .line 252
    new-instance v3, Lgnu/expr/QuoteExp;

    invoke-direct {v3, v0}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v3, v2, v1

    .line 253
    new-instance v0, Lgnu/expr/QuoteExp;

    invoke-static {v7, v8}, Lgnu/math/DFloNum;->make(D)Lgnu/math/DFloNum;

    move-result-object v1

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v0, v2, v6

    const/4 v0, 0x3

    .line 254
    invoke-virtual {p0, v5}, Lgnu/kawa/xslt/XslTranslator;->resolveQNameExpression(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v1

    aput-object v1, v2, v0

    const/4 v0, 0x4

    .line 255
    iget-object v1, p0, Lgnu/kawa/xslt/XslTranslator;->templateLambda:Lgnu/expr/LambdaExp;

    aput-object v1, v2, v0

    .line 256
    new-instance v0, Lgnu/expr/ApplyExp;

    new-instance v1, Lgnu/expr/QuoteExp;

    sget-object v3, Lgnu/kawa/xslt/XslTranslator;->defineTemplateProc:Lgnu/expr/PrimProcedure;

    invoke-direct {v1, v3}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    invoke-virtual {p0, v0}, Lgnu/kawa/xslt/XslTranslator;->push(Lgnu/expr/Expression;)V

    const/4 v0, 0x0

    .line 257
    iput-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->templateLambda:Lgnu/expr/LambdaExp;

    goto/16 :goto_3

    :cond_5
    const-string v3, "text"

    if-ne v0, v3, :cond_7

    .line 261
    iput-boolean v4, p0, Lgnu/kawa/xslt/XslTranslator;->preserveSpace:Z

    .line 262
    iget-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v0, v0, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    new-array v1, v0, [Lgnu/expr/Expression;

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_6

    .line 264
    iget-object v2, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v2, v2, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/expr/Expression;

    aput-object v2, v1, v0

    goto :goto_0

    .line 265
    :cond_6
    iget-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v0, v0, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 266
    new-instance v0, Lgnu/expr/ApplyExp;

    sget-object v2, Lgnu/xquery/lang/XQParser;->makeText:Lgnu/expr/Expression;

    invoke-direct {v0, v2, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 267
    invoke-virtual {p0, v0}, Lgnu/kawa/xslt/XslTranslator;->push(Lgnu/expr/Expression;)V

    .line 268
    iget-object v1, p0, Lgnu/kawa/xslt/XslTranslator;->mexp:Lgnu/expr/ModuleExp;

    iput-object v0, v1, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    goto :goto_3

    .line 272
    :cond_7
    iget-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v0, v0, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    sub-int/2addr v0, v2

    new-array v1, v0, [Lgnu/expr/Expression;

    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_8

    .line 274
    iget-object v2, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v2, v2, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/expr/Expression;

    aput-object v2, v1, v0

    goto :goto_1

    .line 275
    :cond_8
    new-instance v0, Lgnu/kawa/xml/MakeElement;

    invoke-direct {v0}, Lgnu/kawa/xml/MakeElement;-><init>()V

    .line 277
    new-instance v2, Lgnu/expr/ApplyExp;

    new-instance v3, Lgnu/expr/QuoteExp;

    invoke-direct {v3, v0}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-direct {v2, v3, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 278
    invoke-virtual {p0, v2}, Lgnu/kawa/xslt/XslTranslator;->push(Lgnu/expr/Expression;)V

    .line 279
    iget-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->mexp:Lgnu/expr/ModuleExp;

    iput-object v2, v0, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    goto :goto_3

    :cond_9
    :goto_2
    add-int/2addr v2, v1

    const-string v0, "version"

    .line 234
    invoke-virtual {p0, v5, v0, v2}, Lgnu/kawa/xslt/XslTranslator;->popMatchingAttribute(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 235
    new-instance v0, Lgnu/expr/ApplyExp;

    new-instance v1, Lgnu/expr/QuoteExp;

    sget-object v3, Lgnu/kawa/xslt/XslTranslator;->runStylesheetProc:Lgnu/expr/PrimProcedure;

    invoke-direct {v1, v3}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    sget-object v3, Lgnu/expr/Expression;->noExpressions:[Lgnu/expr/Expression;

    invoke-direct {v0, v1, v3}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    invoke-virtual {p0, v0}, Lgnu/kawa/xslt/XslTranslator;->push(Lgnu/expr/Expression;)V

    .line 237
    invoke-virtual {p0, v2}, Lgnu/kawa/xslt/XslTranslator;->popTemplateBody(I)Lgnu/expr/Expression;

    move-result-object v0

    .line 238
    invoke-virtual {p0, v0}, Lgnu/kawa/xslt/XslTranslator;->push(Lgnu/expr/Expression;)V

    .line 239
    iget-object v1, p0, Lgnu/kawa/xslt/XslTranslator;->mexp:Lgnu/expr/ModuleExp;

    iput-object v0, v1, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    :cond_a
    :goto_3
    return-void
.end method

.method public error(CLjava/lang/String;)V
    .locals 1

    .line 486
    invoke-virtual {p0}, Lgnu/kawa/xslt/XslTranslator;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;)V

    return-void
.end method

.method public getExpression()Lgnu/expr/Expression;
    .locals 1

    .line 481
    iget-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v0, v0, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/expr/Expression;

    return-object v0
.end method

.method public ignoring()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method maybeSkipWhitespace()V
    .locals 5

    .line 55
    iget-boolean v0, p0, Lgnu/kawa/xslt/XslTranslator;->preserveSpace:Z

    if-eqz v0, :cond_0

    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v0, v0, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_4

    .line 60
    iget-object v1, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v1, v1, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/expr/Expression;

    .line 61
    instance-of v2, v1, Lgnu/expr/QuoteExp;

    if-eqz v2, :cond_4

    .line 63
    check-cast v1, Lgnu/expr/QuoteExp;

    invoke-virtual {v1}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, ""

    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 65
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    :cond_3
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_1

    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_3

    return-void

    .line 75
    :cond_4
    iget-object v1, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v1, v1, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/Stack;->setSize(I)V

    return-void
.end method

.method public parse(Lgnu/expr/Compilation;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 508
    iput-object p1, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    .line 509
    iget-object v0, p1, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    if-nez v0, :cond_0

    .line 510
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p1, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    .line 511
    :cond_0
    invoke-virtual {p1, p0}, Lgnu/expr/Compilation;->pushNewModule(Lgnu/text/Lexer;)Lgnu/expr/ModuleExp;

    move-result-object v0

    .line 512
    invoke-virtual {p1}, Lgnu/expr/Compilation;->mustCompileHere()V

    .line 513
    invoke-virtual {p0, v0}, Lgnu/kawa/xslt/XslTranslator;->startDocument(Lgnu/expr/ModuleExp;)V

    .line 514
    iget-object v1, p0, Lgnu/kawa/xslt/XslTranslator;->in:Lgnu/mapping/InPort;

    invoke-virtual {p0}, Lgnu/kawa/xslt/XslTranslator;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v2

    invoke-static {v1, v2, p0}, Lgnu/xml/XMLParser;->parse(Lgnu/text/LineBufferedReader;Lgnu/text/SourceMessages;Lgnu/lists/Consumer;)V

    .line 515
    invoke-virtual {p0}, Lgnu/kawa/xslt/XslTranslator;->endDocument()V

    .line 516
    invoke-virtual {p1, v0}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    return-void
.end method

.method parseXPath(Ljava/lang/String;)Lgnu/expr/Expression;
    .locals 3

    .line 285
    iget-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v0}, Lgnu/expr/Compilation;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v0

    .line 288
    :try_start_0
    new-instance v1, Lgnu/xquery/lang/XQParser;

    new-instance v2, Lgnu/mapping/CharArrayInPort;

    invoke-direct {v2, p1}, Lgnu/mapping/CharArrayInPort;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lgnu/kawa/xslt/XslTranslator;->interpreter:Lgnu/kawa/xslt/XSLT;

    invoke-direct {v1, v2, v0, p1}, Lgnu/xquery/lang/XQParser;-><init>(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;Lgnu/xquery/lang/XQuery;)V

    .line 290
    new-instance p1, Ljava/util/Vector;

    const/16 v0, 0x14

    invoke-direct {p1, v0}, Ljava/util/Vector;-><init>(I)V

    .line 294
    :goto_0
    iget-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->parse(Lgnu/expr/Compilation;)Lgnu/expr/Expression;

    move-result-object v0

    if-nez v0, :cond_2

    .line 299
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 301
    sget-object p1, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    return-object p1

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 303
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/expr/Expression;

    return-object p1

    .line 305
    :cond_1
    new-instance p1, Ljava/lang/InternalError;

    const-string v0, "too many xpath expressions"

    invoke-direct {p1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 297
    :cond_2
    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 309
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 310
    new-instance v0, Ljava/lang/InternalError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "caught "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public popMatchingAttribute(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    .line 80
    iget-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v0, v0, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    move v1, p3

    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_6

    .line 83
    iget-object v3, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v3, v3, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v3, p3}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 84
    instance-of v4, v3, Lgnu/expr/ApplyExp;

    if-nez v4, :cond_0

    return-object v2

    .line 86
    :cond_0
    check-cast v3, Lgnu/expr/ApplyExp;

    .line 87
    invoke-virtual {v3}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    .line 88
    invoke-virtual {v3}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v4

    sget-object v5, Lgnu/kawa/xml/MakeAttribute;->makeAttributeExp:Lgnu/expr/QuoteExp;

    if-eq v4, v5, :cond_1

    return-object v2

    .line 90
    :cond_1
    invoke-virtual {v3}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v3

    .line 91
    array-length v4, v3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    return-object v2

    :cond_2
    const/4 v4, 0x0

    .line 93
    aget-object v4, v3, v4

    .line 94
    instance-of v5, v4, Lgnu/expr/QuoteExp;

    if-nez v5, :cond_3

    return-object v2

    .line 96
    :cond_3
    check-cast v4, Lgnu/expr/QuoteExp;

    invoke-virtual {v4}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 97
    instance-of v5, v4, Lgnu/mapping/Symbol;

    if-nez v5, :cond_4

    return-object v2

    .line 99
    :cond_4
    check-cast v4, Lgnu/mapping/Symbol;

    .line 100
    invoke-virtual {v4}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    if-ne v2, p2, :cond_5

    invoke-virtual {v4}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    if-ne v2, p1, :cond_5

    .line 102
    iget-object p1, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object p1, p1, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {p1, v1}, Ljava/util/Stack;->removeElementAt(I)V

    const/4 p1, 0x1

    .line 103
    aget-object p1, v3, p1

    check-cast p1, Lgnu/expr/QuoteExp;

    invoke-virtual {p1}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-object v2
.end method

.method popTemplateBody(I)Lgnu/expr/Expression;
    .locals 2

    .line 112
    iget-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v0, v0, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    sub-int/2addr v0, p1

    .line 114
    new-array p1, v0, [Lgnu/expr/Expression;

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 116
    iget-object v1, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v1, v1, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/expr/Expression;

    aput-object v1, p1, v0

    goto :goto_0

    .line 117
    :cond_0
    new-instance v0, Lgnu/expr/ApplyExp;

    sget-object v1, Lgnu/kawa/functions/AppendValues;->appendValues:Lgnu/kawa/functions/AppendValues;

    invoke-direct {v0, v1, p1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    return-object v0
.end method

.method push(Lgnu/expr/Expression;)V
    .locals 1

    .line 375
    iget-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v0, v0, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method push(Ljava/lang/Object;)V
    .locals 1

    .line 380
    new-instance v0, Lgnu/expr/QuoteExp;

    invoke-direct {v0, p1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lgnu/kawa/xslt/XslTranslator;->push(Lgnu/expr/Expression;)V

    return-void
.end method

.method resolveQNameExpression(Ljava/lang/String;)Lgnu/expr/Expression;
    .locals 2

    if-nez p1, :cond_0

    .line 500
    sget-object p1, Lgnu/expr/QuoteExp;->nullExp:Lgnu/expr/QuoteExp;

    return-object p1

    .line 502
    :cond_0
    new-instance v0, Lgnu/expr/QuoteExp;

    const/4 v1, 0x0

    invoke-static {v1, p1}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p1

    invoke-direct {v0, p1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public startAttribute(Ljava/lang/Object;)V
    .locals 2

    .line 165
    iget-boolean v0, p0, Lgnu/kawa/xslt/XslTranslator;->inAttribute:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x66

    const-string v1, "internal error - attribute inside attribute"

    .line 166
    invoke-virtual {p0, v0, v1}, Lgnu/kawa/xslt/XslTranslator;->error(CLjava/lang/String;)V

    .line 167
    :cond_0
    iput-object p1, p0, Lgnu/kawa/xslt/XslTranslator;->attributeType:Ljava/lang/Object;

    .line 168
    iget-object p1, p0, Lgnu/kawa/xslt/XslTranslator;->attributeValue:Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 169
    iget-object p1, p0, Lgnu/kawa/xslt/XslTranslator;->nesting:Ljava/lang/StringBuffer;

    iget-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v0, v0, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 p1, 0x1

    .line 170
    iput-boolean p1, p0, Lgnu/kawa/xslt/XslTranslator;->inAttribute:Z

    return-void
.end method

.method public startDocument()V
    .locals 0

    return-void
.end method

.method public startDocument(Lgnu/expr/ModuleExp;)V
    .locals 0

    .line 430
    iput-object p1, p0, Lgnu/kawa/xslt/XslTranslator;->mexp:Lgnu/expr/ModuleExp;

    .line 431
    invoke-virtual {p0}, Lgnu/kawa/xslt/XslTranslator;->startDocument()V

    return-void
.end method

.method public startElement(Ljava/lang/Object;)V
    .locals 2

    .line 139
    invoke-virtual {p0}, Lgnu/kawa/xslt/XslTranslator;->maybeSkipWhitespace()V

    .line 140
    invoke-static {p1}, Lgnu/kawa/xslt/XslTranslator;->isXslTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "template"

    if-ne v0, v1, :cond_1

    .line 143
    iget-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->templateLambda:Lgnu/expr/LambdaExp;

    if-eqz v0, :cond_0

    const-string v0, "nested xsl:template"

    .line 144
    invoke-virtual {p0, v0}, Lgnu/kawa/xslt/XslTranslator;->error(Ljava/lang/String;)V

    .line 145
    :cond_0
    new-instance v0, Lgnu/expr/LambdaExp;

    invoke-direct {v0}, Lgnu/expr/LambdaExp;-><init>()V

    iput-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->templateLambda:Lgnu/expr/LambdaExp;

    goto :goto_0

    :cond_1
    const-string v1, "text"

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    .line 150
    iput-boolean v0, p0, Lgnu/kawa/xslt/XslTranslator;->preserveSpace:Z

    .line 151
    :cond_2
    :goto_0
    instance-of v0, p1, Lgnu/xml/XName;

    if-eqz v0, :cond_3

    .line 155
    check-cast p1, Lgnu/xml/XName;

    .line 156
    invoke-virtual {p1}, Lgnu/xml/XName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/xml/XName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lgnu/xml/XName;->getPrefix()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lgnu/mapping/Symbol;->make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p1

    .line 159
    :cond_3
    iget-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->nesting:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v1, v1, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 160
    invoke-virtual {p0, p1}, Lgnu/kawa/xslt/XslTranslator;->push(Ljava/lang/Object;)V

    return-void
.end method

.method public write(I)V
    .locals 4

    .line 316
    iget-boolean v0, p0, Lgnu/kawa/xslt/XslTranslator;->inAttribute:Z

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->attributeValue:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->appendCodePoint(I)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_1

    .line 328
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [C

    const/4 v2, 0x0

    sub-int v0, p1, v0

    shr-int/lit8 v0, v0, 0xa

    const v3, 0xd800

    add-int/2addr v0, v3

    int-to-char v0, v0

    aput-char v0, v1, v2

    const/4 v0, 0x1

    and-int/lit16 p1, p1, 0x3ff

    const v2, 0xdc00

    add-int/2addr p1, v2

    int-to-char p1, p1

    aput-char p1, v1, v0

    .line 333
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([C)V

    .line 335
    :goto_0
    invoke-virtual {p0, p1}, Lgnu/kawa/xslt/XslTranslator;->push(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public write(Ljava/lang/CharSequence;II)V
    .locals 0

    .line 465
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/kawa/xslt/XslTranslator;->write(Ljava/lang/String;)V

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 1

    .line 456
    iget-boolean v0, p0, Lgnu/kawa/xslt/XslTranslator;->inAttribute:Z

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->attributeValue:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 459
    :cond_0
    invoke-virtual {p0, p1}, Lgnu/kawa/xslt/XslTranslator;->push(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public write([CII)V
    .locals 1

    .line 448
    iget-boolean v0, p0, Lgnu/kawa/xslt/XslTranslator;->inAttribute:Z

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->attributeValue:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 451
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Lgnu/kawa/xslt/XslTranslator;->push(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public writeBoolean(Z)V
    .locals 1

    .line 385
    iget-boolean v0, p0, Lgnu/kawa/xslt/XslTranslator;->inAttribute:Z

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->attributeValue:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 388
    sget-object p1, Lgnu/expr/QuoteExp;->trueExp:Lgnu/expr/QuoteExp;

    goto :goto_0

    :cond_1
    sget-object p1, Lgnu/expr/QuoteExp;->falseExp:Lgnu/expr/QuoteExp;

    :goto_0
    invoke-virtual {p0, p1}, Lgnu/kawa/xslt/XslTranslator;->push(Lgnu/expr/Expression;)V

    :goto_1
    return-void
.end method

.method public writeDouble(D)V
    .locals 1

    .line 401
    iget-boolean v0, p0, Lgnu/kawa/xslt/XslTranslator;->inAttribute:Z

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->attributeValue:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 404
    :cond_0
    invoke-static {p1, p2}, Lgnu/math/DFloNum;->make(D)Lgnu/math/DFloNum;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/kawa/xslt/XslTranslator;->push(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public writeFloat(F)V
    .locals 2

    .line 393
    iget-boolean v0, p0, Lgnu/kawa/xslt/XslTranslator;->inAttribute:Z

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->attributeValue:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    float-to-double v0, p1

    .line 396
    invoke-static {v0, v1}, Lgnu/math/DFloNum;->make(D)Lgnu/math/DFloNum;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/kawa/xslt/XslTranslator;->push(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public writeInt(I)V
    .locals 1

    .line 409
    iget-boolean v0, p0, Lgnu/kawa/xslt/XslTranslator;->inAttribute:Z

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->attributeValue:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 412
    :cond_0
    invoke-static {p1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/kawa/xslt/XslTranslator;->push(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public writeLong(J)V
    .locals 1

    .line 417
    iget-boolean v0, p0, Lgnu/kawa/xslt/XslTranslator;->inAttribute:Z

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->attributeValue:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 420
    :cond_0
    invoke-static {p1, p2}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/kawa/xslt/XslTranslator;->push(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 1

    .line 440
    iget-boolean v0, p0, Lgnu/kawa/xslt/XslTranslator;->inAttribute:Z

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->attributeValue:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 443
    :cond_0
    invoke-virtual {p0, p1}, Lgnu/kawa/xslt/XslTranslator;->push(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
