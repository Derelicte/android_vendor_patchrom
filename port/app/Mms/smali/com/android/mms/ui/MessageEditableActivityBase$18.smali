.class Lcom/android/mms/ui/MessageEditableActivityBase$18;
.super Ljava/lang/Object;
.source "MessageEditableActivityBase.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageEditableActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mNested:Z

.field private mOldText:Ljava/lang/CharSequence;

.field private mSelectionEnd:I

.field private mSelectionStart:I

.field private mToast:Landroid/widget/Toast;

.field final synthetic this$0:Lcom/android/mms/ui/MessageEditableActivityBase;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1018
    iput-object p1, p0, Lcom/android/mms/ui/MessageEditableActivityBase$18;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1019
    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase$18;->mOldText:Ljava/lang/CharSequence;

    .line 1020
    iput v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase$18;->mSelectionStart:I

    .line 1021
    iput v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase$18;->mSelectionEnd:I

    .line 1022
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase$18;->mNested:Z

    .line 1023
    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase$18;->mToast:Landroid/widget/Toast;

    return-void
.end method

.method private isTooLong(Ljava/lang/CharSequence;)Z
    .locals 4
    .parameter "s"

    .prologue
    .line 1064
    const/4 v1, 0x1

    .line 1065
    .local v1, isEnglish:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1066
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x7f

    if-le v2, v3, :cond_0

    .line 1067
    const/4 v1, 0x0

    .line 1065
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1070
    :cond_1
    if-nez v1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/16 v3, 0xd

    if-le v2, v3, :cond_2

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .parameter "s"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1038
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase$18;->mNested:Z

    if-eqz v0, :cond_0

    .line 1061
    :goto_0
    return-void

    .line 1041
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageEditableActivityBase$18;->isTooLong(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1042
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase$18;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_1

    .line 1043
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase$18;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    const v1, 0x7f0a0196

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase$18;->mToast:Landroid/widget/Toast;

    .line 1048
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase$18;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1049
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase$18;->mOldText:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase$18;->isTooLong(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1050
    iput-boolean v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase$18;->mNested:Z

    .line 1051
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase$18;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    iget-object v0, v0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectTextEditor:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1052
    iput-boolean v4, p0, Lcom/android/mms/ui/MessageEditableActivityBase$18;->mNested:Z

    .line 1060
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase$18;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    iget-object v0, v0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase$18;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    iget-object v1, v1, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 1054
    :cond_3
    iput-boolean v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase$18;->mNested:Z

    .line 1055
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase$18;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    iget-object v0, v0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectTextEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase$18;->mOldText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1056
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase$18;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    iget-object v0, v0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectTextEditor:Landroid/widget/EditText;

    iget v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase$18;->mSelectionStart:I

    iget v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase$18;->mSelectionEnd:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setSelection(II)V

    .line 1057
    iput-boolean v4, p0, Lcom/android/mms/ui/MessageEditableActivityBase$18;->mNested:Z

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 1026
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase$18;->mNested:Z

    if-eqz v0, :cond_0

    .line 1032
    :goto_0
    return-void

    .line 1029
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase$18;->mOldText:Ljava/lang/CharSequence;

    .line 1030
    iput p2, p0, Lcom/android/mms/ui/MessageEditableActivityBase$18;->mSelectionStart:I

    .line 1031
    add-int v0, p2, p3

    iput v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase$18;->mSelectionEnd:I

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 1035
    return-void
.end method
