.class public final Lcom/google/appinventor/components/runtime/Spinner;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A spinner component that displays a pop-up with a list of elements. These elements can be set in the Designer or Blocks Editor by setting the<code>ElementsFromString</code> property to a string-separated concatenation (for example, <em>choice 1, choice 2, choice 3</em>) or by setting the <code>Elements</code> property to a List in the Blocks editor. Spinners are created with the first item already selected. So selecting  it does not generate an After Picking event. Consequently it\'s useful to make the  first Spinner item be a non-choice like \"Select from below...\". </p>"
    iconName = "images/spinner.png"
    nonVisible = false
    version = 0x3
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private ESt8lrIffFGR3zRMjd5dWbJ7NZymJSmv5KENFDX7fPBQMwlHzz9dP6Ts0eqkVO5e:F

.field private K7dcZ0wsgklhxIEZ56TEizrYoocHIkvglPQDsEhhjdemR7bSblNU8EAyc3To8SV0:Z

.field private PMWpqVMsyfTUgqkfqh3FKX4Q3IYlcybzKrBGEl7qtzs6HNVssJ63V430Ige89pyP:I

.field private PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

.field private Qws8UL0KACxj4AFwEq11K2awfkG72XuPUTZHhPLrlGlIXoxeK9stYQCrIWmabWcL:I

.field private bM4TidozxzoY9OaFqMiIYPyvnCah6tSdq3o2XMkQik5CKYcFIbxeqf36lqbvGbmH:I

.field private context:Landroid/content/Context;

.field private fontTypeface:I

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Spinner;

.field private ik13O8j78hPb27XeipAJHUcJmdHxYMJFw4gYbTGvLKIOs7SX1F7x61gocQ17TlNc:I

.field private jKqYCd0kbp4PLjuOSuX9UMjydG4JrQByekpZGS3DgrCgeBLPmjJ5QsHwhJoPxxWm:F

.field private l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j:Landroid/widget/TextView;

.field private mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:I

.field private mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:Landroid/widget/TextView;

.field private poblgm1P6mADk8QKAia8LTNTlp3hP9LK4vL2LyACRyn6OaTobhLhKjphCbjAETmg:Ljava/lang/String;

.field private vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Lcom/google/appinventor/components/runtime/util/YailList;

.field private vzOZHmUO5BPgEzqFqapthv9IfOCdoiue7DhwcposBCrplFafOlnwvaDCI1FzofZg:I

.field private yHAbLPerXNK4pCwn5nqbt3OeUjDvQdxh29RmVa0moB4dUtgatbeaGoP5jClPUWFb:I

.field private yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 7

    .line 72
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 53
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Lcom/google/appinventor/components/runtime/util/YailList;

    const/4 v0, -0x1

    .line 56
    iput v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->bM4TidozxzoY9OaFqMiIYPyvnCah6tSdq3o2XMkQik5CKYcFIbxeqf36lqbvGbmH:I

    const v1, -0xfc560d

    .line 57
    iput v1, p0, Lcom/google/appinventor/components/runtime/Spinner;->Qws8UL0KACxj4AFwEq11K2awfkG72XuPUTZHhPLrlGlIXoxeK9stYQCrIWmabWcL:I

    const/high16 v2, -0x1000000

    .line 58
    iput v2, p0, Lcom/google/appinventor/components/runtime/Spinner;->ik13O8j78hPb27XeipAJHUcJmdHxYMJFw4gYbTGvLKIOs7SX1F7x61gocQ17TlNc:I

    const/4 v2, 0x0

    .line 59
    iput v2, p0, Lcom/google/appinventor/components/runtime/Spinner;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:I

    const/high16 v3, 0x41900000    # 18.0f

    .line 60
    iput v3, p0, Lcom/google/appinventor/components/runtime/Spinner;->jKqYCd0kbp4PLjuOSuX9UMjydG4JrQByekpZGS3DgrCgeBLPmjJ5QsHwhJoPxxWm:F

    const-string v3, ""

    .line 64
    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Spinner;->poblgm1P6mADk8QKAia8LTNTlp3hP9LK4vL2LyACRyn6OaTobhLhKjphCbjAETmg:Ljava/lang/String;

    .line 65
    iput v2, p0, Lcom/google/appinventor/components/runtime/Spinner;->fontTypeface:I

    .line 68
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/Spinner;->K7dcZ0wsgklhxIEZ56TEizrYoocHIkvglPQDsEhhjdemR7bSblNU8EAyc3To8SV0:Z

    const v3, -0x333334

    .line 69
    iput v3, p0, Lcom/google/appinventor/components/runtime/Spinner;->yHAbLPerXNK4pCwn5nqbt3OeUjDvQdxh29RmVa0moB4dUtgatbeaGoP5jClPUWFb:I

    .line 73
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/Spinner;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 74
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/Spinner;->context:Landroid/content/Context;

    .line 75
    new-instance v4, Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Spinner;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/Spinner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Spinner;

    .line 78
    new-instance v5, Lcom/google/appinventor/components/runtime/Spinner$1;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Spinner;->context:Landroid/content/Context;

    invoke-direct {v5, p0, v6}, Lcom/google/appinventor/components/runtime/Spinner$1;-><init>(Lcom/google/appinventor/components/runtime/Spinner;Landroid/content/Context;)V

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/Spinner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ArrayAdapter;

    .line 119
    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 120
    invoke-virtual {v4, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 122
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 124
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Spinner;->SelectionIndex()I

    move-result p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/Spinner;->PMWpqVMsyfTUgqkfqh3FKX4Q3IYlcybzKrBGEl7qtzs6HNVssJ63V430Ige89pyP:I

    .line 126
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Spinner;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setContext(Landroid/content/Context;)V

    .line 127
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Spinner;->TextAlignment(I)V

    .line 128
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Spinner;->ItemTextColor(I)V

    .line 129
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Spinner;->ItemBackgroundColor(I)V

    const p1, -0xde690e

    .line 130
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Spinner;->SpinnerColor(I)V

    .line 131
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/Spinner;->PromptItemColor(I)V

    const/high16 p1, 0x41b80000    # 23.0f

    .line 132
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Spinner;->TextSize(F)V

    const/high16 p1, 0x41600000    # 14.0f

    .line 133
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Spinner;->SpinnerTextSize(F)V

    const-string p1, "Item1,Item2,Item3"

    .line 134
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Spinner;->ElementsFromString(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/Spinner;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/google/appinventor/components/runtime/Spinner;->bM4TidozxzoY9OaFqMiIYPyvnCah6tSdq3o2XMkQik5CKYcFIbxeqf36lqbvGbmH:I

    return p0
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/Spinner;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/Spinner;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:Z

    return p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Spinner;)F
    .locals 0

    .line 47
    iget p0, p0, Lcom/google/appinventor/components/runtime/Spinner;->jKqYCd0kbp4PLjuOSuX9UMjydG4JrQByekpZGS3DgrCgeBLPmjJ5QsHwhJoPxxWm:F

    return p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Spinner;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/google/appinventor/components/runtime/Spinner;->yHAbLPerXNK4pCwn5nqbt3OeUjDvQdxh29RmVa0moB4dUtgatbeaGoP5jClPUWFb:I

    return p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Spinner;)Landroid/content/Context;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Spinner;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Spinner;)Landroid/widget/TextView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Spinner;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Spinner;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Spinner;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Spinner;)Lcom/google/appinventor/components/runtime/Form;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Spinner;->form:Lcom/google/appinventor/components/runtime/Form;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Spinner;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Spinner;->poblgm1P6mADk8QKAia8LTNTlp3hP9LK4vL2LyACRyn6OaTobhLhKjphCbjAETmg:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Spinner;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/Spinner;->K7dcZ0wsgklhxIEZ56TEizrYoocHIkvglPQDsEhhjdemR7bSblNU8EAyc3To8SV0:Z

    return p0
.end method

.method static synthetic vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Lcom/google/appinventor/components/runtime/Spinner;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/google/appinventor/components/runtime/Spinner;->fontTypeface:I

    return p0
.end method

.method static synthetic wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/Spinner;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/google/appinventor/components/runtime/Spinner;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:I

    return p0
.end method

.method static synthetic wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/Spinner;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/Spinner;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

    return p0
.end method


# virtual methods
.method public final AfterSelecting(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event called after the user selects an item from the dropdown list."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "AfterSelecting"

    .line 405
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final DisplayDropdown()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "displays the dropdown list for selection, same action as when the user clicks on the spinner."
    .end annotation

    .line 397
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    return-void
.end method

.method public final Elements()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "returns a list of text elements to be picked from."
    .end annotation

    .line 330
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Lcom/google/appinventor/components/runtime/util/YailList;

    return-object v0
.end method

.method public final Elements(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Adds the passed text element to the Spinner list."
    .end annotation

    .line 341
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 342
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Spinner;->SelectionIndex(I)V

    goto :goto_0

    .line 343
    :cond_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Spinner;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Spinner;->SelectionIndex()I

    move-result v0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Spinner;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 344
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Spinner;->SelectionIndex(I)V

    :cond_1
    :goto_0
    const-string v0, "Spinner"

    .line 346
    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->elements(Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 347
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object p1

    .line 1362
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->vzOZHmUO5BPgEzqFqapthv9IfOCdoiue7DhwcposBCrplFafOlnwvaDCI1FzofZg:I

    .line 1363
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 1364
    :goto_1
    array-length v0, p1

    if-ge v1, v0, :cond_2

    .line 1365
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ArrayAdapter;

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final ElementsFromString(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Item1, Item2, Item3"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the Spinner list to the elements passed in the comma-separated string."
    .end annotation

    .line 358
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->elementsFromString(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Spinner;->Elements(Lcom/google/appinventor/components/runtime/util/YailList;)V

    return-void
.end method

.method public final FontBold(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 224
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Spinner;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:Z

    return-void
.end method

.method public final FontBold()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 217
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:Z

    return v0
.end method

.method public final FontItalic(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 237
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Spinner;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

    return-void
.end method

.method public final FontItalic()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 230
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

    return v0
.end method

.method public final FontTypeface()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 243
    iget v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->fontTypeface:I

    return v0
.end method

.method public final FontTypeface(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 250
    iput p1, p0, Lcom/google/appinventor/components/runtime/Spinner;->fontTypeface:I

    return-void
.end method

.method public final FontTypefaceImport(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "font_asset"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set a custom font."
    .end annotation

    .line 258
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Spinner;->poblgm1P6mADk8QKAia8LTNTlp3hP9LK4vL2LyACRyn6OaTobhLhKjphCbjAETmg:Ljava/lang/String;

    return-void
.end method

.method public final ItemBackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the background color for the spinner items."
    .end annotation

    .line 168
    iget v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->Qws8UL0KACxj4AFwEq11K2awfkG72XuPUTZHhPLrlGlIXoxeK9stYQCrIWmabWcL:I

    return v0
.end method

.method public final ItemBackgroundColor(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF03A9F3"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the background color for the spinner items."
    .end annotation

    .line 161
    iput p1, p0, Lcom/google/appinventor/components/runtime/Spinner;->Qws8UL0KACxj4AFwEq11K2awfkG72XuPUTZHhPLrlGlIXoxeK9stYQCrIWmabWcL:I

    .line 162
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getPopupBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public final ItemTextColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the text color for the spinner items."
    .end annotation

    .line 153
    iget v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->bM4TidozxzoY9OaFqMiIYPyvnCah6tSdq3o2XMkQik5CKYcFIbxeqf36lqbvGbmH:I

    return v0
.end method

.method public final ItemTextColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the text color for the spinner items."
    .end annotation

    .line 147
    iput p1, p0, Lcom/google/appinventor/components/runtime/Spinner;->bM4TidozxzoY9OaFqMiIYPyvnCah6tSdq3o2XMkQik5CKYcFIbxeqf36lqbvGbmH:I

    return-void
.end method

.method public final Prompt()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Text with the current title for the Spinner window."
        userVisible = false
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 377
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final Prompt(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the Spinner window prompt to the given title."
        userVisible = false
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 389
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final PromptItemColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the text color for the spinner items prompt/hint."
    .end annotation

    .line 278
    iget v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->yHAbLPerXNK4pCwn5nqbt3OeUjDvQdxh29RmVa0moB4dUtgatbeaGoP5jClPUWFb:I

    return v0
.end method

.method public final PromptItemColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFCCCCCC"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the text color for the spinner items prompt/hint."
    .end annotation

    .line 273
    iput p1, p0, Lcom/google/appinventor/components/runtime/Spinner;->yHAbLPerXNK4pCwn5nqbt3OeUjDvQdxh29RmVa0moB4dUtgatbeaGoP5jClPUWFb:I

    return-void
.end method

.method public final Selection()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the current selected item in the spinner."
    .end annotation

    .line 287
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Spinner;->SelectionIndex()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Spinner;->SelectionIndex()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final Selection(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set the selected item in the spinner"
    .end annotation

    .line 298
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->setSelectedIndexFromValue(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Spinner;->SelectionIndex(I)V

    return-void
.end method

.method public final SelectionIndex()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The index of the currently selected item, starting at 1. If no item is selected, the value will be 0."
    .end annotation

    .line 308
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spinner;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->selectionIndex(ILcom/google/appinventor/components/runtime/util/YailList;)I

    move-result v0

    return v0
.end method

.method public final SelectionIndex(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set the spinner selection to the element at the given index.If an attempt is made to set this to a number less than 1 or greater than the number of items in the Spinner, SelectionIndex will be set to 0, and Selection will be set to empty."
    .end annotation

    .line 320
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Spinner;->SelectionIndex()I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->PMWpqVMsyfTUgqkfqh3FKX4Q3IYlcybzKrBGEl7qtzs6HNVssJ63V430Ige89pyP:I

    .line 321
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spinner;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {p1, v1}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->selectionIndex(ILcom/google/appinventor/components/runtime/util/YailList;)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method public final SpinnerColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the text color for the spinner."
    .end annotation

    .line 183
    iget v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->ik13O8j78hPb27XeipAJHUcJmdHxYMJFw4gYbTGvLKIOs7SX1F7x61gocQ17TlNc:I

    return v0
.end method

.method public final SpinnerColor(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF2196F2"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the text color for the spinner."
    .end annotation

    .line 176
    iput p1, p0, Lcom/google/appinventor/components/runtime/Spinner;->ik13O8j78hPb27XeipAJHUcJmdHxYMJFw4gYbTGvLKIOs7SX1F7x61gocQ17TlNc:I

    .line 177
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public final SpinnerTextSize()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the size of the spinner selection text."
    .end annotation

    .line 417
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spinner;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getFontSize(Landroid/widget/TextView;Landroid/content/Context;)F

    move-result v0

    return v0
.end method

.method public final SpinnerTextSize(F)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "14.0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The size of the spinner selected text."
    .end annotation

    .line 412
    iput p1, p0, Lcom/google/appinventor/components/runtime/Spinner;->ESt8lrIffFGR3zRMjd5dWbJ7NZymJSmv5KENFDX7fPBQMwlHzz9dP6Ts0eqkVO5e:F

    return-void
.end method

.method public final TextAlignment()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 190
    iget v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:I

    return v0
.end method

.method public final TextAlignment(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "textalignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 198
    iput p1, p0, Lcom/google/appinventor/components/runtime/Spinner;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:I

    return-void
.end method

.method public final TextSize()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the text size of the spinner items."
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spinner;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getFontSize(Landroid/widget/TextView;Landroid/content/Context;)F

    move-result v0

    return v0
.end method

.method public final TextSize(F)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "18"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The text size of the spinner items."
    .end annotation

    .line 206
    iput p1, p0, Lcom/google/appinventor/components/runtime/Spinner;->jKqYCd0kbp4PLjuOSuX9UMjydG4JrQByekpZGS3DgrCgeBLPmjJ5QsHwhJoPxxWm:F

    return-void
.end method

.method public final UsePrompt(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If true the first spinner item will be the prompt text."
    .end annotation

    .line 266
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Spinner;->K7dcZ0wsgklhxIEZ56TEizrYoocHIkvglPQDsEhhjdemR7bSblNU8EAyc3To8SV0:Z

    return-void
.end method

.method public final getView()Landroid/view/View;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Spinner;

    return-object v0
.end method

.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 421
    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Spinner;->l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j:Landroid/widget/TextView;

    .line 422
    iget p1, p0, Lcom/google/appinventor/components/runtime/Spinner;->ik13O8j78hPb27XeipAJHUcJmdHxYMJFw4gYbTGvLKIOs7SX1F7x61gocQ17TlNc:I

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 423
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spinner;->context:Landroid/content/Context;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/KodularHelper;->setPadding(Landroid/view/View;Landroid/content/Context;IIII)V

    .line 424
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Spinner;->l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j:Landroid/widget/TextView;

    iget p2, p0, Lcom/google/appinventor/components/runtime/Spinner;->ESt8lrIffFGR3zRMjd5dWbJ7NZymJSmv5KENFDX7fPBQMwlHzz9dP6Ts0eqkVO5e:F

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    .line 432
    iget p1, p0, Lcom/google/appinventor/components/runtime/Spinner;->vzOZHmUO5BPgEzqFqapthv9IfOCdoiue7DhwcposBCrplFafOlnwvaDCI1FzofZg:I

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Spinner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result p1

    if-lez p1, :cond_0

    iget p1, p0, Lcom/google/appinventor/components/runtime/Spinner;->PMWpqVMsyfTUgqkfqh3FKX4Q3IYlcybzKrBGEl7qtzs6HNVssJ63V430Ige89pyP:I

    if-eqz p1, :cond_1

    :cond_0
    iget p1, p0, Lcom/google/appinventor/components/runtime/Spinner;->vzOZHmUO5BPgEzqFqapthv9IfOCdoiue7DhwcposBCrplFafOlnwvaDCI1FzofZg:I

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Spinner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ArrayAdapter;

    invoke-virtual {p2}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result p2

    if-le p1, p2, :cond_2

    iget p1, p0, Lcom/google/appinventor/components/runtime/Spinner;->PMWpqVMsyfTUgqkfqh3FKX4Q3IYlcybzKrBGEl7qtzs6HNVssJ63V430Ige89pyP:I

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Spinner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ArrayAdapter;

    invoke-virtual {p2}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result p2

    if-le p1, p2, :cond_2

    :cond_1
    add-int/lit8 p3, p3, 0x1

    .line 433
    invoke-virtual {p0, p3}, Lcom/google/appinventor/components/runtime/Spinner;->SelectionIndex(I)V

    .line 434
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Spinner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/Spinner;->vzOZHmUO5BPgEzqFqapthv9IfOCdoiue7DhwcposBCrplFafOlnwvaDCI1FzofZg:I

    return-void

    .line 436
    :cond_2
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/Spinner;->K7dcZ0wsgklhxIEZ56TEizrYoocHIkvglPQDsEhhjdemR7bSblNU8EAyc3To8SV0:Z

    if-eqz p1, :cond_3

    if-lez p3, :cond_4

    :cond_3
    add-int/lit8 p3, p3, 0x1

    .line 443
    invoke-virtual {p0, p3}, Lcom/google/appinventor/components/runtime/Spinner;->SelectionIndex(I)V

    .line 444
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Spinner;->Selection()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Spinner;->AfterSelecting(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 450
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Spinner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Spinner;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method
