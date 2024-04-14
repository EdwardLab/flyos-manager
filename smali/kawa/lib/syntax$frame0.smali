.class public Lkawa/lib/syntax$frame0;
.super Lgnu/expr/ModuleBody;
.source "syntax.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkawa/lib/syntax;->lambda5(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame0"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nsyntax.scm\nScheme\n*S Scheme\n*F\n+ 1 syntax.scm\n/u2/home/jis/ai2-kawa/kawa/lib/syntax.scm\n*L\n161#1,3:161\n*E\n"
.end annotation


# instance fields
.field $unnamed$0:Lkawa/lang/TemplateScope;

.field $unnamed$1:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method


# virtual methods
.method public lambda6loop(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 161
    iget-object v0, p0, Lkawa/lib/syntax$frame0;->$unnamed$1:[Ljava/lang/Object;

    const/4 v1, 0x5

    invoke-static {v1, v0}, Lkawa/lang/SyntaxPattern;->allocVars(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lkawa/lib/syntax;->Lit85:Lkawa/lang/SyntaxPattern;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    sget-object p1, Lkawa/lib/syntax;->Lit86:Lkawa/lang/SyntaxTemplate;

    iget-object v1, p0, Lkawa/lib/syntax$frame0;->$unnamed$0:Lkawa/lang/TemplateScope;

    invoke-virtual {p1, v0, v1}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object p1

    sget-object v1, Lkawa/lib/syntax;->Lit87:Lkawa/lang/SyntaxTemplate;

    iget-object v2, p0, Lkawa/lib/syntax$frame0;->$unnamed$0:Lkawa/lang/TemplateScope;

    invoke-virtual {v1, v0, v2}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkawa/lib/syntax$frame0;->lambda6loop(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p1

    goto :goto_1

    :cond_0
    sget-object v1, Lkawa/lib/syntax;->Lit88:Lkawa/lang/SyntaxPattern;

    invoke-virtual {v1, p1, v0, v2}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    goto :goto_1

    :cond_1
    sget-object v1, Lkawa/lib/syntax;->Lit89:Lkawa/lang/SyntaxPattern;

    invoke-virtual {v1, p1, v0, v2}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object p1, Lkawa/lib/syntax;->Lit90:Lkawa/lang/SyntaxTemplate;

    iget-object v1, p0, Lkawa/lib/syntax$frame0;->$unnamed$0:Lkawa/lang/TemplateScope;

    invoke-virtual {p1, v0, v1}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "invalid case-lambda clause"

    instance-of v1, v0, [Ljava/lang/Object;

    if-eqz v1, :cond_2

    check-cast v0, [Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    move-object v0, v1

    :goto_0
    invoke-static {p1, v0}, Lkawa/lib/prim_syntax;->syntaxError(Ljava/lang/Object;[Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object p1

    invoke-static {p1}, Lgnu/lists/LList;->list1(Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p1

    goto :goto_1

    :cond_3
    const-string v0, "syntax-case"

    invoke-static {v0, p1}, Lkawa/standard/syntax_case;->error(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    return-object p1
.end method
