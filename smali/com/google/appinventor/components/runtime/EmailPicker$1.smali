.class final Lcom/google/appinventor/components/runtime/EmailPicker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/EmailPicker;->Initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/EmailPicker;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/EmailPicker;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/EmailPicker$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/EmailPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final HandlePermissionResponse(Ljava/lang/String;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 67
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/EmailPicker$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/EmailPicker;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/EmailPicker;->view:Landroid/widget/EditText;

    check-cast p1, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/EmailPicker$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/EmailPicker;

    invoke-static {p2}, Lcom/google/appinventor/components/runtime/EmailPicker;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/EmailPicker;)Lcom/google/appinventor/components/runtime/EmailAddressAdapter;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    .line 69
    :cond_0
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/EmailPicker$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/EmailPicker;

    iget-object p2, p2, Lcom/google/appinventor/components/runtime/EmailPicker;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/EmailPicker$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/EmailPicker;

    const-string v1, "Initialize"

    invoke-virtual {p2, v0, v1, p1}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
