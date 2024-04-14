.class public Lgnu/kawa/functions/Not;
.super Lgnu/mapping/Procedure1;
.source "Not.java"


# instance fields
.field language:Lgnu/expr/Language;


# direct methods
.method public constructor <init>(Lgnu/expr/Language;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Lgnu/mapping/Procedure1;-><init>()V

    .line 13
    iput-object p1, p0, Lgnu/kawa/functions/Not;->language:Lgnu/expr/Language;

    .line 14
    sget-object p1, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v0, "gnu.kawa.functions.CompileMisc:validateApplyNot"

    invoke-virtual {p0, p1, v0}, Lgnu/kawa/functions/Not;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    sget-object p1, Lgnu/mapping/Procedure;->compilerKey:Lgnu/mapping/LazyPropertyKey;

    const-string v0, "*gnu.kawa.functions.CompileMisc:forNot"

    invoke-virtual {p1, p0, v0}, Lgnu/mapping/LazyPropertyKey;->set(Lgnu/mapping/PropertySet;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lgnu/expr/Language;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lgnu/kawa/functions/Not;-><init>(Lgnu/expr/Language;)V

    .line 22
    invoke-virtual {p0, p2}, Lgnu/kawa/functions/Not;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 27
    iget-object v0, p0, Lgnu/kawa/functions/Not;->language:Lgnu/expr/Language;

    invoke-virtual {v0, p1}, Lgnu/expr/Language;->isTrue(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lgnu/expr/Language;->booleanObject(Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
