.class public Lkawa/lib/prim_syntax$frame;
.super Lgnu/expr/ModuleBody;
.source "prim_syntax.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkawa/lib/prim_syntax;->lambda3(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nprim_syntax.scm\nScheme\n*S Scheme\n*F\n+ 1 prim_syntax.scm\n/u2/home/jis/ai2-kawa/kawa/lib/prim_syntax.scm\n*L\n104#1,18:104\n*E\n"
.end annotation


# instance fields
.field $unnamed$0:[Ljava/lang/Object;

.field out$Mnbindings:Ljava/lang/Object;

.field out$Mninits:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method


# virtual methods
.method public lambda4processBinding(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 105
    iget-object v0, p0, Lkawa/lib/prim_syntax$frame;->$unnamed$0:[Ljava/lang/Object;

    const/16 v1, 0x8

    invoke-static {v1, v0}, Lkawa/lang/SyntaxPattern;->allocVars(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lkawa/lib/prim_syntax;->Lit34:Lkawa/lang/SyntaxPattern;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto/16 :goto_2

    :cond_0
    sget-object v1, Lkawa/lib/prim_syntax;->Lit35:Lkawa/lang/SyntaxPattern;

    invoke-virtual {v1, p1, v0, v2}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    new-instance p1, Lgnu/lists/Pair;

    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v1

    sget-object v2, Lkawa/lib/prim_syntax;->Lit36:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v2, v0, v1}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lkawa/lib/prim_syntax$frame;->out$Mnbindings:Ljava/lang/Object;

    invoke-direct {p1, v1, v2}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lkawa/lib/prim_syntax$frame;->out$Mnbindings:Ljava/lang/Object;

    .line 111
    new-instance p1, Lgnu/lists/Pair;

    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v1

    sget-object v2, Lkawa/lib/prim_syntax;->Lit37:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v2, v0, v1}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lkawa/lib/prim_syntax$frame;->out$Mninits:Ljava/lang/Object;

    invoke-direct {p1, v1, v2}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lkawa/lib/prim_syntax$frame;->out$Mninits:Ljava/lang/Object;

    .line 112
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object p1

    sget-object v1, Lkawa/lib/prim_syntax;->Lit38:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v1, v0, p1}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkawa/lib/prim_syntax$frame;->lambda4processBinding(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_2

    :cond_1
    sget-object v1, Lkawa/lib/prim_syntax;->Lit39:Lkawa/lang/SyntaxPattern;

    invoke-virtual {v1, p1, v0, v2}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 115
    new-instance p1, Lgnu/lists/Pair;

    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v1

    sget-object v2, Lkawa/lib/prim_syntax;->Lit40:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v2, v0, v1}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lkawa/lib/prim_syntax$frame;->out$Mnbindings:Ljava/lang/Object;

    invoke-direct {p1, v1, v2}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lkawa/lib/prim_syntax$frame;->out$Mnbindings:Ljava/lang/Object;

    .line 116
    new-instance p1, Lgnu/lists/Pair;

    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v1

    sget-object v2, Lkawa/lib/prim_syntax;->Lit41:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v2, v0, v1}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lkawa/lib/prim_syntax$frame;->out$Mninits:Ljava/lang/Object;

    invoke-direct {p1, v1, v2}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lkawa/lib/prim_syntax$frame;->out$Mninits:Ljava/lang/Object;

    .line 117
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object p1

    sget-object v1, Lkawa/lib/prim_syntax;->Lit42:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v1, v0, p1}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkawa/lib/prim_syntax$frame;->lambda4processBinding(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    :cond_2
    sget-object v1, Lkawa/lib/prim_syntax;->Lit43:Lkawa/lang/SyntaxPattern;

    invoke-virtual {v1, p1, v0, v2}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    const-string v0, "missing initializion in letrec"

    .line 119
    instance-of v1, v0, [Ljava/lang/Object;

    if-eqz v1, :cond_3

    check-cast v0, [Ljava/lang/Object;

    goto :goto_0

    :cond_3
    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v2

    move-object v0, v1

    :goto_0
    invoke-static {p1, v0}, Lkawa/lib/prim_syntax;->syntaxError(Ljava/lang/Object;[Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object p1

    goto :goto_2

    :cond_4
    sget-object v1, Lkawa/lib/prim_syntax;->Lit44:Lkawa/lang/SyntaxPattern;

    invoke-virtual {v1, p1, v0, v2}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "invalid bindings syntax in letrec"

    .line 121
    instance-of v1, v0, [Ljava/lang/Object;

    if-eqz v1, :cond_5

    check-cast v0, [Ljava/lang/Object;

    goto :goto_1

    :cond_5
    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v2

    move-object v0, v1

    :goto_1
    invoke-static {p1, v0}, Lkawa/lib/prim_syntax;->syntaxError(Ljava/lang/Object;[Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object p1

    goto :goto_2

    :cond_6
    const-string v0, "syntax-case"

    invoke-static {v0, p1}, Lkawa/standard/syntax_case;->error(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    return-object p1
.end method
