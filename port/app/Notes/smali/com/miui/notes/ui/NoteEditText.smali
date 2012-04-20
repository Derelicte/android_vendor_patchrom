.class public Lcom/miui/notes/ui/NoteEditText;
.super Landroid/widget/EditText;
.source "NoteEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/notes/ui/NoteEditText$MenuHandler;,
        Lcom/miui/notes/ui/NoteEditText$OnTextViewChangeListener;
    }
.end annotation


# static fields
.field private static final sSchemaActionResMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIndex:I

.field private mOnTextViewChangeListener:Lcom/miui/notes/ui/NoteEditText$OnTextViewChangeListener;

.field private mSelectionStartBeforeDelete:I

.field private mStartActionMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/notes/ui/NoteEditText;->sSchemaActionResMap:Ljava/util/Map;

    .line 41
    sget-object v0, Lcom/miui/notes/ui/NoteEditText;->sSchemaActionResMap:Ljava/util/Map;

    const-string v1, "tel:"

    const v2, 0x7f09000e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/miui/notes/ui/NoteEditText;->sSchemaActionResMap:Ljava/util/Map;

    const-string v1, "http:"

    const v2, 0x7f090010

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/miui/notes/ui/NoteEditText;->sSchemaActionResMap:Ljava/util/Map;

    const-string v1, "mailto:"

    const v2, 0x7f09000f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/notes/ui/NoteEditText;->mIndex:I

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 84
    const v0, 0x101006e

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    return-void
.end method

.method static synthetic access$100(Lcom/miui/notes/ui/NoteEditText;Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/miui/notes/ui/NoteEditText;->onTextContextMenuItem(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private canPaste()Z
    .locals 1

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditText;->getSelectionStart()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditText;->getSelectionEnd()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/notes/ui/NoteEditText;->getClipboardManager()Landroid/content/ClipboardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getClipboardManager()Landroid/content/ClipboardManager;
    .locals 2

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    return-object v0
.end method

.method private onTextContextMenuItem(Ljava/lang/CharSequence;)Z
    .locals 3
    .parameter "title"

    .prologue
    .line 234
    const/4 v0, 0x0

    .line 235
    .local v0, handled:Z
    iget-object v1, p0, Lcom/miui/notes/ui/NoteEditText;->mContext:Landroid/content/Context;

    const v2, 0x104000b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 236
    invoke-direct {p0}, Lcom/miui/notes/ui/NoteEditText;->pasteContent()V

    .line 237
    const/4 v0, 0x1

    .line 243
    :cond_0
    :goto_0
    return v0

    .line 238
    :cond_1
    iget-object v1, p0, Lcom/miui/notes/ui/NoteEditText;->mContext:Landroid/content/Context;

    const v2, 0x7f090064

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/notes/ui/NoteEditText;->mStartActionMode:Z

    .line 240
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditText;->performLongClick()Z

    .line 241
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private pasteContent()V
    .locals 5

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/miui/notes/ui/NoteEditText;->getClipboardManager()Landroid/content/ClipboardManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 253
    .local v0, clip:Landroid/content/ClipData;
    if-eqz v0, :cond_0

    .line 254
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 255
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditText;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 256
    .local v2, paste:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditText;->getSelectionEnd()I

    move-result v4

    invoke-interface {v3, v4, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 254
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 259
    .end local v1           #i:I
    .end local v2           #paste:Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 185
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/notes/ui/NoteEditText;->mStartActionMode:Z

    if-nez v0, :cond_3

    .line 186
    new-instance v3, Lcom/miui/notes/ui/NoteEditText$MenuHandler;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Lcom/miui/notes/ui/NoteEditText$MenuHandler;-><init>(Lcom/miui/notes/ui/NoteEditText;Lcom/miui/notes/ui/NoteEditText$1;)V

    .line 187
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditText;->getSelectionStart()I

    move-result v0

    .line 188
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditText;->getSelectionEnd()I

    move-result v1

    .line 190
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 191
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 193
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    const-class v5, Landroid/text/style/URLSpan;

    invoke-interface {v1, v4, v0, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .line 194
    array-length v1, v0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_3

    .line 196
    sget-object v1, Lcom/miui/notes/ui/NoteEditText;->sSchemaActionResMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 197
    aget-object v5, v0, v2

    invoke-virtual {v5}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_0

    .line 198
    sget-object v4, Lcom/miui/notes/ui/NoteEditText;->sSchemaActionResMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 203
    :goto_0
    if-nez v1, :cond_1

    .line 204
    const v1, 0x7f090011

    .line 207
    :cond_1
    invoke-interface {p1, v2, v2, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v4, Lcom/miui/notes/ui/NoteEditText$1;

    invoke-direct {v4, p0, v0}, Lcom/miui/notes/ui/NoteEditText$1;-><init>(Lcom/miui/notes/ui/NoteEditText;[Landroid/text/style/URLSpan;)V

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 215
    invoke-direct {p0}, Lcom/miui/notes/ui/NoteEditText;->canPaste()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 216
    const v0, 0x1020022

    const v1, 0x104000b

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 219
    :cond_2
    const v0, 0x7f090064

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 223
    :cond_3
    iput-boolean v2, p0, Lcom/miui/notes/ui/NoteEditText;->mStartActionMode:Z

    .line 224
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 225
    return-void

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditText;->mOnTextViewChangeListener:Lcom/miui/notes/ui/NoteEditText$OnTextViewChangeListener;

    if-eqz v0, :cond_0

    .line 163
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditText;->mOnTextViewChangeListener:Lcom/miui/notes/ui/NoteEditText$OnTextViewChangeListener;

    iget v1, p0, Lcom/miui/notes/ui/NoteEditText;->mIndex:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/miui/notes/ui/NoteEditText$OnTextViewChangeListener;->onTextChange(IZ)V

    .line 169
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 170
    return-void

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditText;->mOnTextViewChangeListener:Lcom/miui/notes/ui/NoteEditText$OnTextViewChangeListener;

    iget v1, p0, Lcom/miui/notes/ui/NoteEditText;->mIndex:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/miui/notes/ui/NoteEditText$OnTextViewChangeListener;->onTextChange(IZ)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 116
    packed-switch p1, :pswitch_data_0

    .line 128
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 118
    :pswitch_0
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditText;->mOnTextViewChangeListener:Lcom/miui/notes/ui/NoteEditText$OnTextViewChangeListener;

    if-eqz v0, :cond_0

    .line 119
    const/4 v0, 0x0

    goto :goto_1

    .line 123
    :pswitch_1
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditText;->getSelectionStart()I

    move-result v0

    iput v0, p0, Lcom/miui/notes/ui/NoteEditText;->mSelectionStartBeforeDelete:I

    goto :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 133
    packed-switch p1, :pswitch_data_0

    .line 157
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    :goto_1
    return v2

    .line 135
    :pswitch_0
    iget-object v2, p0, Lcom/miui/notes/ui/NoteEditText;->mOnTextViewChangeListener:Lcom/miui/notes/ui/NoteEditText$OnTextViewChangeListener;

    if-eqz v2, :cond_1

    .line 136
    iget v2, p0, Lcom/miui/notes/ui/NoteEditText;->mSelectionStartBeforeDelete:I

    if-nez v2, :cond_0

    iget v2, p0, Lcom/miui/notes/ui/NoteEditText;->mIndex:I

    if-eqz v2, :cond_0

    .line 137
    iget-object v2, p0, Lcom/miui/notes/ui/NoteEditText;->mOnTextViewChangeListener:Lcom/miui/notes/ui/NoteEditText$OnTextViewChangeListener;

    iget v3, p0, Lcom/miui/notes/ui/NoteEditText;->mIndex:I

    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/miui/notes/ui/NoteEditText$OnTextViewChangeListener;->onEditTextDelete(ILjava/lang/String;)V

    .line 138
    const/4 v2, 0x1

    goto :goto_1

    .line 141
    :cond_1
    const-string v2, "NoteEditText"

    const-string v3, "OnTextViewChangeListener was not seted"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 145
    :pswitch_1
    iget-object v2, p0, Lcom/miui/notes/ui/NoteEditText;->mOnTextViewChangeListener:Lcom/miui/notes/ui/NoteEditText$OnTextViewChangeListener;

    if-eqz v2, :cond_2

    .line 146
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditText;->getSelectionStart()I

    move-result v0

    .line 147
    .local v0, selectionStart:I
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditText;->length()I

    move-result v3

    invoke-interface {v2, v0, v3}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, text:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3, v0}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/notes/ui/NoteEditText;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v2, p0, Lcom/miui/notes/ui/NoteEditText;->mOnTextViewChangeListener:Lcom/miui/notes/ui/NoteEditText$OnTextViewChangeListener;

    iget v3, p0, Lcom/miui/notes/ui/NoteEditText;->mIndex:I

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v2, v3, v1}, Lcom/miui/notes/ui/NoteEditText$OnTextViewChangeListener;->onEditTextEnter(ILjava/lang/String;)V

    goto :goto_0

    .line 151
    .end local v0           #selectionStart:I
    .end local v1           #text:Ljava/lang/String;
    :cond_2
    const-string v2, "NoteEditText"

    const-string v3, "OnTextViewChangeListener was not seted"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 111
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    return v5

    .line 97
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v3, v5

    .line 98
    .local v3, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v4, v5

    .line 99
    .local v4, y:I
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditText;->getTotalPaddingLeft()I

    move-result v5

    sub-int/2addr v3, v5

    .line 100
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditText;->getTotalPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    .line 101
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditText;->getScrollX()I

    move-result v5

    add-int/2addr v3, v5

    .line 102
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditText;->getScrollY()I

    move-result v5

    add-int/2addr v4, v5

    .line 104
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 105
    .local v0, layout:Landroid/text/Layout;
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v1

    .line 106
    .local v1, line:I
    int-to-float v5, v3

    invoke-virtual {v0, v1, v5}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v2

    .line 107
    .local v2, off:I
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v5, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public performLongClick()Z
    .locals 4

    .prologue
    .line 174
    invoke-super {p0}, Landroid/widget/EditText;->performLongClick()Z

    move-result v1

    .line 175
    .local v1, ret:Z
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditText;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 177
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditText;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 180
    :cond_0
    return v1
.end method

.method public setIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 76
    iput p1, p0, Lcom/miui/notes/ui/NoteEditText;->mIndex:I

    .line 77
    return-void
.end method

.method public setOnTextViewChangeListener(Lcom/miui/notes/ui/NoteEditText$OnTextViewChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/miui/notes/ui/NoteEditText;->mOnTextViewChangeListener:Lcom/miui/notes/ui/NoteEditText$OnTextViewChangeListener;

    .line 81
    return-void
.end method
