.class public abstract Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private AQ1MpycqIZ4lZp4zU5ZgAcOeQWFjlY37qDhSA6zNIQj8WisYY7lHQNjV6h6Xnju0:Ljava/lang/String;

.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/Component;

.field private LYVRHQlR5uMq9RmVQLgPQwQp4HVKuBDt7Jnpu0jTztYClgnk53NSpkUmjjPPbYn:[Ljava/lang/String;


# direct methods
.method protected varargs constructor <init>(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/Component;

    .line 36
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;->AQ1MpycqIZ4lZp4zU5ZgAcOeQWFjlY37qDhSA6zNIQj8WisYY7lHQNjV6h6Xnju0:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;->LYVRHQlR5uMq9RmVQLgPQwQp4HVKuBDt7Jnpu0jTztYClgnk53NSpkUmjjPPbYn:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getPermissions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;->LYVRHQlR5uMq9RmVQLgPQwQp4HVKuBDt7Jnpu0jTztYClgnk53NSpkUmjjPPbYn:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 67
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;->LYVRHQlR5uMq9RmVQLgPQwQp4HVKuBDt7Jnpu0jTztYClgnk53NSpkUmjjPPbYn:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object v0
.end method

.method public onDenied([Ljava/lang/String;)V
    .locals 6

    .line 54
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/Component;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/Component;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/Form;

    .line 55
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 56
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/Component;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;->AQ1MpycqIZ4lZp4zU5ZgAcOeQWFjlY37qDhSA6zNIQj8WisYY7lHQNjV6h6Xnju0:Ljava/lang/String;

    invoke-virtual {v0, v4, v5, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract onGranted()V
.end method
