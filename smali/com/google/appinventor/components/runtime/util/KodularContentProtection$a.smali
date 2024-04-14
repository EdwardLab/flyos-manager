.class final Lcom/google/appinventor/components/runtime/util/KodularContentProtection$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/KodularContentProtection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/KodularContentProtection;


# direct methods
.method private constructor <init>(Lcom/google/appinventor/components/runtime/util/KodularContentProtection;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/KodularContentProtection$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/util/KodularContentProtection;B)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection$a;-><init>(Lcom/google/appinventor/components/runtime/util/KodularContentProtection;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 2116
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/KodularContentProtection$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->access$100(Lcom/google/appinventor/components/runtime/util/KodularContentProtection;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2117
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/KodularContentProtection$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->access$202(Lcom/google/appinventor/components/runtime/util/KodularContentProtection;Z)Z

    .line 2118
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 2121
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/KodularContentProtection$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->access$202(Lcom/google/appinventor/components/runtime/util/KodularContentProtection;Z)Z

    .line 2122
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .line 112
    check-cast p1, Ljava/lang/Boolean;

    .line 1127
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/KodularContentProtection$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/KodularContentProtection$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->access$200(Lcom/google/appinventor/components/runtime/util/KodularContentProtection;)Z

    move-result v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/KodularContentProtection$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->access$300(Lcom/google/appinventor/components/runtime/util/KodularContentProtection;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->access$400(Lcom/google/appinventor/components/runtime/util/KodularContentProtection;ZZLjava/lang/String;)V

    return-void
.end method
