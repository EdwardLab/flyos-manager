.class public Lcom/google/appinventor/components/runtime/EmailPicker;
.super Lcom/google/appinventor/components/runtime/TextBoxBase;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SOCIAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "An EmailPicker is a kind of text box.  If the user begins entering the name or email address of a contact, the phone will show a dropdown menu of choices that complete the entry.  If there are many contacts, the dropdown can take several seconds to appear, and can show intermediate results while the matches are being computed. <p>The initial contents of the text box and the contents< after user entry is in the <code>Text</code> property.  If the <code>Text</code> property is initially empty, the contents of the <code>Hint</code> property will be faintly shown in the text box as a hint to the user.</p>\n <p>Other properties affect the appearance of the text box (<code>TextAlignment</code>, <code>BackgroundColor</code>, etc.) and whether it can be used (<code>Enabled</code>).</p>\n<p>Text boxes like this are usually used with <code>Button</code> components, with the user clicking on the button when text entry is complete."
    version = 0x6
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.READ_CONTACTS"
    }
.end annotation


# instance fields
.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/EmailAddressAdapter;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 57
    new-instance v0, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/TextBoxBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/widget/EditText;)V

    .line 58
    new-instance v0, Lcom/google/appinventor/components/runtime/EmailAddressAdapter;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/appinventor/components/runtime/EmailAddressAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/EmailPicker;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/EmailAddressAdapter;

    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/EmailPicker;)Lcom/google/appinventor/components/runtime/EmailAddressAdapter;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/EmailPicker;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/EmailAddressAdapter;

    return-object p0
.end method


# virtual methods
.method public GotFocus()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "GotFocus"

    .line 93
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Initialize()V
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/EmailPicker;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/EmailPicker$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/EmailPicker$1;-><init>(Lcom/google/appinventor/components/runtime/EmailPicker;)V

    const-string v2, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v2, v1}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    return-void
.end method
