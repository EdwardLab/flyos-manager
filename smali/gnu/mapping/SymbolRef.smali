.class Lgnu/mapping/SymbolRef;
.super Ljava/lang/ref/WeakReference;
.source "Namespace.java"


# instance fields
.field next:Lgnu/mapping/SymbolRef;


# direct methods
.method constructor <init>(Lgnu/mapping/Symbol;Lgnu/mapping/Namespace;)V
    .locals 0

    .line 372
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method getSymbol()Lgnu/mapping/Symbol;
    .locals 1

    .line 381
    invoke-virtual {p0}, Lgnu/mapping/SymbolRef;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/Symbol;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SymbolRef["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lgnu/mapping/SymbolRef;->getSymbol()Lgnu/mapping/Symbol;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
