.class public Lgnu/mapping/PropertyKey;
.super Ljava/lang/Object;
.source "PropertyKey.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lgnu/mapping/PropertyKey;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get(Lgnu/mapping/PropertySet;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/mapping/PropertySet;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 28
    invoke-virtual {p0, p1, v0}, Lgnu/mapping/PropertyKey;->get(Lgnu/mapping/PropertySet;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Lgnu/mapping/PropertySet;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/mapping/PropertySet;",
            "TT;)TT;"
        }
    .end annotation

    .line 20
    invoke-virtual {p1, p0, p2}, Lgnu/mapping/PropertySet;->getProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public set(Lgnu/mapping/PropertySet;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/mapping/PropertySet;",
            "TT;)V"
        }
    .end annotation

    .line 33
    invoke-virtual {p1, p0, p2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
