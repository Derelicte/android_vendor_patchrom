.class public Lcom/android/mms/ui/NewMessageActivity;
.super Lcom/android/mms/ui/MessageEditableActivityBase;
.source "NewMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/NewMessageActivity$SendIgnoreInvalidRecipientListener;,
        Lcom/android/mms/ui/NewMessageActivity$CancelSendingListener;
    }
.end annotation


# static fields
.field private static ADJUST_SPEED:F


# instance fields
.field private mAddRecipientButton:Landroid/view/View;

.field private mAddRecipientPanel:Landroid/view/View;

.field private mCommitedRecipients:Lcom/android/mms/data/ContactList;

.field private mConfirmRecipientButton:Landroid/view/View;

.field private mOriginalCommitedNumbers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousAdjustTime:J

.field private mRecentContactGrid:Lcom/android/mms/ui/StaticGridView;

.field private mRecentContactList:Landroid/view/View;

.field private mRecentContacts:Lcom/android/mms/data/ContactList;

.field private mRecipientAdapter:Lcom/android/mms/ui/RecipientsAdapter;

.field private mRecipientEditor:Landroid/widget/EditText;

.field private mRecipientEditorCount:Landroid/widget/TextView;

.field private mRecipientRowHeight:I

.field private mRecipientRows:Lcom/android/mms/ui/RowLayout;

.field private mRecipientRowsScroller:Landroid/widget/ScrollView;

.field private final mRecipientsKeyListener:Landroid/view/View$OnKeyListener;

.field private mRecipientsMaxHeight:F

.field private mRecipientsMaxHeightFinal:F

.field private mRecipientsViewer:Landroid/widget/TextView;

.field private mRecipientsViewerCount:Landroid/widget/TextView;

.field private mRecipientsViewerHead:Landroid/widget/TextView;

.field private mRecipientsViewerLinearLayout:Landroid/widget/LinearLayout;

.field private final mRecipientsWatcher:Landroid/text/TextWatcher;

.field private mSuggestionList:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    const/high16 v0, 0x3f00

    sput v0, Lcom/android/mms/ui/NewMessageActivity;->ADJUST_SPEED:F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;-><init>()V

    .line 93
    new-instance v0, Lcom/android/mms/data/ContactList;

    invoke-direct {v0}, Lcom/android/mms/data/ContactList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mCommitedRecipients:Lcom/android/mms/data/ContactList;

    .line 94
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mOriginalCommitedNumbers:Ljava/util/ArrayList;

    .line 596
    new-instance v0, Lcom/android/mms/ui/NewMessageActivity$11;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/NewMessageActivity$11;-><init>(Lcom/android/mms/ui/NewMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsKeyListener:Landroid/view/View$OnKeyListener;

    .line 828
    new-instance v0, Lcom/android/mms/ui/NewMessageActivity$14;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/NewMessageActivity$14;-><init>(Lcom/android/mms/ui/NewMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsWatcher:Landroid/text/TextWatcher;

    .line 911
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/NewMessageActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mAddRecipientButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/NewMessageActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsViewerLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/NewMessageActivity;Lcom/android/mms/data/Contact;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/mms/ui/NewMessageActivity;->commitRecipient(Lcom/android/mms/data/Contact;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/NewMessageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessageActivity;->updateRecipientsViewerText()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/NewMessageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessageActivity;->updateRecentContactListVisibility()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/NewMessageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessageActivity;->commitEditingRecipient()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/NewMessageActivity;)Lcom/android/mms/data/ContactList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mCommitedRecipients:Lcom/android/mms/data/ContactList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/NewMessageActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/mms/ui/NewMessageActivity;->removeRecipient(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/NewMessageActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mOriginalCommitedNumbers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/NewMessageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessageActivity;->syncNumbersToWorkingMessage()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/NewMessageActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsViewerHead:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/NewMessageActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mSuggestionList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/NewMessageActivity;)Landroid/widget/ScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientRowsScroller:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/mms/ui/NewMessageActivity;Lcom/android/mms/data/Contact;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/NewMessageActivity;->addRecipient(Lcom/android/mms/data/Contact;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/mms/ui/NewMessageActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsViewer:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/NewMessageActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/NewMessageActivity;)Lcom/android/mms/ui/RowLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientRows:Lcom/android/mms/ui/RowLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/NewMessageActivity;)Lcom/android/mms/ui/RecipientsAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientAdapter:Lcom/android/mms/ui/RecipientsAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/NewMessageActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mConfirmRecipientButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/NewMessageActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/mms/ui/NewMessageActivity;->commitRecipient(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/ui/NewMessageActivity;)Lcom/android/mms/data/ContactList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecentContacts:Lcom/android/mms/data/ContactList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/NewMessageActivity;)Lcom/android/mms/ui/StaticGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecentContactGrid:Lcom/android/mms/ui/StaticGridView;

    return-object v0
.end method

.method private addRecipient(Lcom/android/mms/data/Contact;Ljava/lang/String;)V
    .locals 6
    .parameter "c"
    .parameter "origNumber"

    .prologue
    const/4 v5, -0x2

    .line 633
    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity;->mCommitedRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v1, p1}, Lcom/android/mms/data/ContactList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 709
    :goto_0
    return-void

    .line 637
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity;->mOriginalCommitedNumbers:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity;->mCommitedRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v1, p1}, Lcom/android/mms/data/ContactList;->add(Lcom/android/mms/data/Contact;)Z

    .line 640
    invoke-virtual {p0}, Lcom/android/mms/ui/NewMessageActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040040

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 641
    .local v0, tv:Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 642
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 646
    :goto_1
    new-instance v1, Lcom/android/mms/ui/NewMessageActivity$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/mms/ui/NewMessageActivity$12;-><init>(Lcom/android/mms/ui/NewMessageActivity;Lcom/android/mms/data/Contact;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 659
    new-instance v1, Lcom/android/mms/ui/NewMessageActivity$13;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/mms/ui/NewMessageActivity$13;-><init>(Lcom/android/mms/ui/NewMessageActivity;Ljava/lang/String;Lcom/android/mms/data/Contact;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 705
    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientRows:Lcom/android/mms/ui/RowLayout;

    iget-object v2, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientRows:Lcom/android/mms/ui/RowLayout;

    invoke-virtual {v2}, Lcom/android/mms/ui/RowLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    new-instance v3, Lcom/android/mms/ui/RowLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Lcom/android/mms/ui/RowLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/mms/ui/RowLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 644
    :cond_1
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private commitEditingRecipient()V
    .locals 3

    .prologue
    .line 749
    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 750
    .local v0, text:Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 751
    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientEditor:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 752
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/NewMessageActivity;->commitRecipient(Ljava/lang/String;)V

    .line 754
    :cond_0
    return-void
.end method

.method private commitRecipient(Lcom/android/mms/data/Contact;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 717
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/NewMessageActivity;->commitRecipient(Lcom/android/mms/data/Contact;Ljava/lang/String;)V

    .line 718
    return-void
.end method

.method private commitRecipient(Lcom/android/mms/data/Contact;Ljava/lang/String;)V
    .locals 3
    .parameter "c"
    .parameter "origNumber"

    .prologue
    .line 616
    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity;->mCommitedRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v1, p1}, Lcom/android/mms/data/ContactList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 630
    :cond_0
    :goto_0
    return-void

    .line 619
    :cond_1
    const/4 v0, 0x0

    .line 620
    .local v0, needUpdateSendButton:Z
    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity;->mCommitedRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 621
    const/4 v0, 0x1

    .line 623
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/NewMessageActivity;->addRecipient(Lcom/android/mms/data/Contact;Ljava/lang/String;)V

    .line 625
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessageActivity;->syncNumbersToWorkingMessage()V

    .line 626
    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsViewerHead:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 627
    if-eqz v0, :cond_0

    .line 628
    invoke-virtual {p0}, Lcom/android/mms/ui/NewMessageActivity;->updateSendButtonState()V

    goto :goto_0
.end method

.method private commitRecipient(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 721
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/mms/ui/NewMessageActivity;->commitRecipient(Lcom/android/mms/data/Contact;Ljava/lang/String;)V

    .line 722
    return-void
.end method

.method private getCommitedRecipientName(I)Ljava/lang/String;
    .locals 2
    .parameter "i"

    .prologue
    .line 447
    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity;->mCommitedRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v1, p1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 448
    .local v0, c:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 449
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v1

    .line 451
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity;->mOriginalCommitedNumbers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method private getRecipientNumbers()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 757
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity;->mOriginalCommitedNumbers:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 758
    .local v0, numbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessageActivity;->hasUncommitedRecipient()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 759
    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 761
    :cond_0
    return-object v0
.end method

.method private hasUncommitedRecipient()Z
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initRecipientsEditor()V
    .locals 2

    .prologue
    .line 422
    const v0, 0x7f10009e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NewMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientEditor:Landroid/widget/EditText;

    .line 423
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 424
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 425
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientEditor:Landroid/widget/EditText;

    new-instance v1, Lcom/android/mms/ui/NewMessageActivity$9;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/NewMessageActivity$9;-><init>(Lcom/android/mms/ui/NewMessageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 444
    return-void
.end method

.method private initUserGuide()V
    .locals 3

    .prologue
    .line 176
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 178
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "guide_add_recipients"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity;->mAddRecipientButton:Landroid/view/View;

    new-instance v2, Lcom/android/mms/ui/NewMessageActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/ui/NewMessageActivity$1;-><init>(Lcom/android/mms/ui/NewMessageActivity;Landroid/content/SharedPreferences;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 196
    :cond_0
    return-void
.end method

.method private isValidAddress(Ljava/lang/String;)Z
    .locals 1
    .parameter "number"

    .prologue
    .line 765
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 766
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isValidMmsAddress(Ljava/lang/String;)Z

    move-result v0

    .line 776
    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils;->isWellFormedSmsAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchMultiplePhonePicker()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 930
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessageActivity;->commitEditingRecipient()V

    .line 932
    new-instance v4, Landroid/content/Intent;

    const-string v0, "com.android.contacts.action.GET_MULTIPLE_PHONES"

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 933
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 934
    const-string v0, "vnd.android.cursor.dir/phone_v2"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 938
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mCommitedRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    new-array v5, v0, [Landroid/net/Uri;

    .line 940
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mCommitedRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 941
    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getContactMethodType()I

    move-result v7

    if-ne v3, v7, :cond_2

    .line 942
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getPhoneUri()Landroid/net/Uri;

    move-result-object v0

    aput-object v0, v5, v1

    move v0, v3

    :goto_1
    move v1, v0

    goto :goto_0

    .line 945
    :cond_0
    if-lez v1, :cond_1

    .line 946
    const-string v0, "com.android.contacts.extra.PHONE_URIS"

    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 948
    :cond_1
    invoke-virtual {p0, v4, v2}, Lcom/android/mms/ui/NewMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 949
    return-void

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private processPickResult(Landroid/content/Intent;)V
    .locals 8
    .parameter

    .prologue
    const v7, 0x7f0a0113

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 969
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v2, p0, Lcom/android/mms/ui/NewMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v2}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftSmsMessage(Lcom/android/mms/data/Conversation;)V

    .line 970
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessageActivity;->removeAllRecipients()V

    .line 972
    const-string v0, "com.android.contacts.extra.PHONE_URIS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 975
    if-eqz v2, :cond_0

    array-length v0, v2

    .line 977
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v3

    .line 978
    const v4, 0x7fffffff

    if-eq v3, v4, :cond_1

    if-le v0, v3, :cond_1

    .line 979
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v4, 0x1010355

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v4, 0x7f0a0063

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/mms/ui/NewMessageActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1025
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 975
    goto :goto_0

    .line 988
    :cond_1
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 989
    new-instance v5, Landroid/app/ProgressDialog;

    invoke-direct {v5, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 990
    invoke-virtual {p0, v7}, Lcom/android/mms/ui/NewMessageActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 991
    const v0, 0x7f0a0114

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NewMessageActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 992
    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 993
    invoke-virtual {v5, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 995
    new-instance v4, Lcom/android/mms/ui/NewMessageActivity$15;

    invoke-direct {v4, p0, v5}, Lcom/android/mms/ui/NewMessageActivity$15;-><init>(Lcom/android/mms/ui/NewMessageActivity;Landroid/app/ProgressDialog;)V

    .line 1002
    const-wide/16 v0, 0x3e8

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1004
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/android/mms/ui/NewMessageActivity$16;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/NewMessageActivity$16;-><init>(Lcom/android/mms/ui/NewMessageActivity;[Landroid/os/Parcelable;Landroid/os/Handler;Ljava/lang/Runnable;Landroid/app/ProgressDialog;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto :goto_1
.end method

.method private removeAllRecipients()V
    .locals 3

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientRows:Lcom/android/mms/ui/RowLayout;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/mms/ui/NewMessageActivity;->mCommitedRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/RowLayout;->removeViews(II)V

    .line 737
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mCommitedRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->clear()V

    .line 738
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mOriginalCommitedNumbers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 739
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientEditor:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 740
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessageActivity;->syncNumbersToWorkingMessage()V

    .line 741
    invoke-virtual {p0}, Lcom/android/mms/ui/NewMessageActivity;->updateSendButtonState()V

    .line 742
    return-void
.end method

.method private removeRecipient(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 725
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mCommitedRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v0, p1}, Lcom/android/mms/data/ContactList;->remove(I)Lcom/android/mms/data/Contact;

    .line 726
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mOriginalCommitedNumbers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 727
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessageActivity;->syncNumbersToWorkingMessage()V

    .line 728
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientRows:Lcom/android/mms/ui/RowLayout;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/RowLayout;->removeViewAt(I)V

    .line 729
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mCommitedRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsViewerHead:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 731
    invoke-virtual {p0}, Lcom/android/mms/ui/NewMessageActivity;->updateSendButtonState()V

    .line 733
    :cond_0
    return-void
.end method

.method private syncNumbersToWorkingMessage()V
    .locals 3

    .prologue
    .line 712
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-direct {p0}, Lcom/android/mms/ui/NewMessageActivity;->getRecipientNumbers()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setWorkingRecipients(Ljava/util/List;)V

    .line 713
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {p0}, Lcom/android/mms/ui/NewMessageActivity;->containsEmail()Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->setHasEmail(ZZ)V

    .line 714
    return-void
.end method

.method private updateRecentContactListVisibility()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 488
    invoke-virtual {p0}, Lcom/android/mms/ui/NewMessageActivity;->recipientCount()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecentContacts:Lcom/android/mms/data/ContactList;

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 489
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecentContactList:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 490
    iget-boolean v1, p0, Lcom/android/mms/ui/NewMessageActivity;->mAllowAnimation:Z

    if-eqz v1, :cond_1

    .line 491
    invoke-virtual {p0}, Lcom/android/mms/ui/NewMessageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 492
    .local v0, a:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecentContactList:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 494
    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecentContactList:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 505
    :cond_2
    :goto_0
    return-void

    .line 497
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecentContactList:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 498
    iget-boolean v1, p0, Lcom/android/mms/ui/NewMessageActivity;->mAllowAnimation:Z

    if-eqz v1, :cond_4

    .line 499
    invoke-virtual {p0}, Lcom/android/mms/ui/NewMessageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x7f05

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 500
    .restart local v0       #a:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecentContactList:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 502
    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecentContactList:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateRecipientRows()V
    .locals 3

    .prologue
    .line 481
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientRows:Lcom/android/mms/ui/RowLayout;

    invoke-virtual {v2}, Lcom/android/mms/ui/RowLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 482
    iget-object v2, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientRows:Lcom/android/mms/ui/RowLayout;

    invoke-virtual {v2, v0}, Lcom/android/mms/ui/RowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 483
    .local v1, tv:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/mms/ui/NewMessageActivity;->mCommitedRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v2, v0}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 485
    .end local v1           #tv:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private updateRecipientsViewerText()V
    .locals 9

    .prologue
    const/16 v4, 0x8

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 456
    iget-object v3, p0, Lcom/android/mms/ui/NewMessageActivity;->mCommitedRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    .line 457
    .local v0, count:I
    if-nez v0, :cond_0

    .line 458
    iget-object v3, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsViewerHead:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 459
    iget-object v3, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsViewer:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    iget-object v3, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsViewerCount:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 478
    :goto_0
    return-void

    .line 462
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {p0, v8}, Lcom/android/mms/ui/NewMessageActivity;->getCommitedRecipientName(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 463
    .local v2, s:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/NewMessageActivity;->mCommitedRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 464
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    invoke-direct {p0, v1}, Lcom/android/mms/ui/NewMessageActivity;->getCommitedRecipientName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 467
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsViewerHead:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 468
    iget-object v3, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsViewer:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    if-le v0, v6, :cond_2

    .line 471
    iget-object v3, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsViewerCount:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 472
    iget-object v3, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsViewerCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/NewMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0127

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 475
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsViewerCount:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private writeContactNumbers()V
    .locals 3

    .prologue
    .line 387
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity;->mCommitedRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 388
    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity;->mCommitedRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v1, v0}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    iget-object v2, p0, Lcom/android/mms/ui/NewMessageActivity;->mOriginalCommitedNumbers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/mms/data/Contact;->setNumber(Ljava/lang/String;)V

    .line 387
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 390
    :cond_0
    return-void
.end method


# virtual methods
.method public containsEmail()Z
    .locals 4

    .prologue
    .line 819
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessageActivity;->getRecipientNumbers()Ljava/util/ArrayList;

    move-result-object v2

    .line 820
    .local v2, numbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 821
    .local v1, number:Ljava/lang/String;
    invoke-static {v1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 822
    const/4 v3, 0x1

    .line 825
    .end local v1           #number:Ljava/lang/String;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public formatInvalidNumbers()Ljava/lang/String;
    .locals 5

    .prologue
    .line 805
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 806
    .local v3, sb:Ljava/lang/StringBuilder;
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessageActivity;->getRecipientNumbers()Ljava/util/ArrayList;

    move-result-object v2

    .line 807
    .local v2, numbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 808
    .local v1, number:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/mms/ui/NewMessageActivity;->isValidAddress(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 809
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_1

    .line 810
    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 812
    :cond_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 815
    .end local v1           #number:Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method protected getContentViewResId()I
    .locals 1

    .prologue
    .line 417
    const v0, 0x7f040035

    return v0
.end method

.method public hasInvalidRecipient()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 791
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessageActivity;->getRecipientNumbers()Ljava/util/ArrayList;

    move-result-object v2

    .line 792
    .local v2, numbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 793
    .local v1, number:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/mms/ui/NewMessageActivity;->isValidAddress(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 794
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 801
    .end local v1           #number:Ljava/lang/String;
    :goto_0
    return v3

    .line 796
    .restart local v1       #number:Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 801
    .end local v1           #number:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public hasValidRecipient()Z
    .locals 4

    .prologue
    .line 781
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessageActivity;->getRecipientNumbers()Ljava/util/ArrayList;

    move-result-object v2

    .line 782
    .local v2, numbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 783
    .local v1, number:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/mms/ui/NewMessageActivity;->isValidAddress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 784
    const/4 v3, 0x1

    .line 787
    .end local v1           #number:Ljava/lang/String;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method initRecentList()V
    .locals 3

    .prologue
    .line 310
    new-instance v1, Lcom/android/mms/data/ContactList;

    invoke-direct {v1}, Lcom/android/mms/data/ContactList;-><init>()V

    iput-object v1, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecentContacts:Lcom/android/mms/data/ContactList;

    .line 311
    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecentContactGrid:Lcom/android/mms/ui/StaticGridView;

    invoke-virtual {v1}, Lcom/android/mms/ui/StaticGridView;->removeAllViews()V

    .line 313
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 314
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "pref_key_show_recent_contacts"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 377
    :goto_0
    return-void

    .line 319
    :cond_0
    new-instance v1, Lcom/android/mms/ui/NewMessageActivity$8;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/NewMessageActivity$8;-><init>(Lcom/android/mms/ui/NewMessageActivity;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/NewMessageActivity$8;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected initResourceRefs()V
    .locals 2

    .prologue
    .line 230
    invoke-super {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->initResourceRefs()V

    .line 232
    const v0, 0x7f1000a3

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NewMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mAddRecipientButton:Landroid/view/View;

    .line 233
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mAddRecipientButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    const v0, 0x7f1000a4

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NewMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mConfirmRecipientButton:Landroid/view/View;

    .line 235
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mConfirmRecipientButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    const v0, 0x7f10009c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NewMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientRowsScroller:Landroid/widget/ScrollView;

    .line 237
    const v0, 0x7f10009d

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NewMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/RowLayout;

    iput-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientRows:Lcom/android/mms/ui/RowLayout;

    .line 238
    const v0, 0x7f10009f

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NewMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsViewerLinearLayout:Landroid/widget/LinearLayout;

    .line 239
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsViewerLinearLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/mms/ui/NewMessageActivity$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/NewMessageActivity$2;-><init>(Lcom/android/mms/ui/NewMessageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientRows:Lcom/android/mms/ui/RowLayout;

    new-instance v1, Lcom/android/mms/ui/NewMessageActivity$3;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/NewMessageActivity$3;-><init>(Lcom/android/mms/ui/NewMessageActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RowLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientRows:Lcom/android/mms/ui/RowLayout;

    new-instance v1, Lcom/android/mms/ui/NewMessageActivity$4;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/NewMessageActivity$4;-><init>(Lcom/android/mms/ui/NewMessageActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RowLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 264
    const v0, 0x7f1000a5

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NewMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientEditorCount:Landroid/widget/TextView;

    .line 265
    const v0, 0x7f10009b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NewMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsViewerHead:Landroid/widget/TextView;

    .line 266
    const v0, 0x7f1000a0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NewMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsViewer:Landroid/widget/TextView;

    .line 267
    const v0, 0x7f1000a1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NewMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsViewerCount:Landroid/widget/TextView;

    .line 268
    const v0, 0x7f1000a6

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NewMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mSuggestionList:Landroid/widget/ListView;

    .line 269
    new-instance v0, Lcom/android/mms/ui/RecipientsAdapter;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/RecipientsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientAdapter:Lcom/android/mms/ui/RecipientsAdapter;

    .line 270
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientAdapter:Lcom/android/mms/ui/RecipientsAdapter;

    new-instance v1, Lcom/android/mms/ui/NewMessageActivity$5;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/NewMessageActivity$5;-><init>(Lcom/android/mms/ui/NewMessageActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 281
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mSuggestionList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientAdapter:Lcom/android/mms/ui/RecipientsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 282
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mSuggestionList:Landroid/widget/ListView;

    new-instance v1, Lcom/android/mms/ui/NewMessageActivity$6;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/NewMessageActivity$6;-><init>(Lcom/android/mms/ui/NewMessageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 290
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mSuggestionList:Landroid/widget/ListView;

    new-instance v1, Lcom/android/mms/ui/NewMessageActivity$7;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/NewMessageActivity$7;-><init>(Lcom/android/mms/ui/NewMessageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 304
    const v0, 0x7f1000a2

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NewMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mAddRecipientPanel:Landroid/view/View;

    .line 305
    const v0, 0x7f1000a7

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NewMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecentContactList:Landroid/view/View;

    .line 306
    const v0, 0x7f1000a8

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NewMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/StaticGridView;

    iput-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecentContactGrid:Lcom/android/mms/ui/StaticGridView;

    .line 307
    return-void
.end method

.method public isPreparedForSending()Z
    .locals 2

    .prologue
    .line 879
    invoke-virtual {p0}, Lcom/android/mms/ui/NewMessageActivity;->recipientCount()I

    move-result v0

    .line 880
    .local v0, recipientCount:I
    if-lez v0, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v1

    if-gt v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 954
    invoke-super {p0, p1, p2, p3}, Lcom/android/mms/ui/MessageEditableActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 955
    packed-switch p1, :pswitch_data_0

    .line 964
    :cond_0
    :goto_0
    return-void

    .line 957
    :pswitch_0
    if-eqz p3, :cond_0

    .line 958
    invoke-direct {p0, p3}, Lcom/android/mms/ui/NewMessageActivity;->processPickResult(Landroid/content/Intent;)V

    goto :goto_0

    .line 955
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1028
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1036
    invoke-super {p0, p1}, Lcom/android/mms/ui/MessageEditableActivityBase;->onClick(Landroid/view/View;)V

    .line 1038
    :goto_0
    return-void

    .line 1030
    :pswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessageActivity;->launchMultiplePhonePicker()V

    goto :goto_0

    .line 1033
    :pswitch_1
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessageActivity;->commitEditingRecipient()V

    goto :goto_0

    .line 1028
    nop

    :pswitch_data_0
    .packed-switch 0x7f1000a3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onContactsUpdated()V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessageActivity;->updateRecipientsViewerText()V

    .line 222
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessageActivity;->updateRecipientRows()V

    .line 223
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v9, -0x1

    const/4 v8, 0x0

    .line 111
    invoke-super {p0, p1}, Lcom/android/mms/ui/MessageEditableActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/mms/ui/NewMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 114
    .local v2, intent:Landroid/content/Intent;
    const-string v7, "thread_id"

    invoke-virtual {v2, v7, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 116
    .local v4, threadId:J
    cmp-long v7, v4, v9

    if-nez v7, :cond_1

    .line 117
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 118
    .local v6, uri:Landroid/net/Uri;
    if-nez v6, :cond_0

    .line 119
    invoke-static {p0}, Lcom/android/mms/data/Conversation;->createNew(Landroid/content/Context;)Lcom/android/mms/data/Conversation;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/NewMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    .line 127
    .end local v6           #uri:Landroid/net/Uri;
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessageActivity;->initRecipientsEditor()V

    .line 128
    invoke-virtual {p0}, Lcom/android/mms/ui/NewMessageActivity;->initialize()V

    .line 130
    iget-object v7, p0, Lcom/android/mms/ui/NewMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v7}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    .line 131
    .local v3, recipients:Lcom/android/mms/data/ContactList;
    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 132
    .local v0, c:Lcom/android/mms/data/Contact;
    invoke-direct {p0, v0}, Lcom/android/mms/ui/NewMessageActivity;->commitRecipient(Lcom/android/mms/data/Contact;)V

    goto :goto_1

    .line 121
    .end local v0           #c:Lcom/android/mms/data/Contact;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #recipients:Lcom/android/mms/data/ContactList;
    .restart local v6       #uri:Landroid/net/Uri;
    :cond_0
    invoke-static {p0, v6, v8}, Lcom/android/mms/data/Conversation;->createNew(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/mms/data/Conversation;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/NewMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    goto :goto_0

    .line 124
    .end local v6           #uri:Landroid/net/Uri;
    :cond_1
    invoke-static {p0, v4, v5, v8}, Lcom/android/mms/data/Conversation;->createNew(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/NewMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    goto :goto_0

    .line 134
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #recipients:Lcom/android/mms/data/ContactList;
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessageActivity;->updateRecipientsViewerText()V

    .line 136
    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 137
    iget-object v7, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsViewerHead:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    :goto_2
    invoke-virtual {p0}, Lcom/android/mms/ui/NewMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0028

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientRowHeight:I

    .line 142
    iget v7, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientRowHeight:I

    mul-int/lit8 v7, v7, 0x3

    int-to-float v7, v7

    iput v7, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsMaxHeightFinal:F

    iput v7, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsMaxHeight:F

    .line 143
    iget-object v7, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientEditor:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->requestFocus()Z

    .line 144
    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 145
    iget-object v7, p0, Lcom/android/mms/ui/NewMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->requestFocus()Z

    .line 149
    :goto_3
    return-void

    .line 139
    :cond_3
    iget-object v7, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsViewerHead:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 147
    :cond_4
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessageActivity;->initUserGuide()V

    goto :goto_3
.end method

.method public onMessageSent()V
    .locals 1

    .prologue
    .line 1042
    invoke-super {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->onMessageSent()V

    .line 1043
    new-instance v0, Lcom/android/mms/ui/NewMessageActivity$17;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/NewMessageActivity$17;-><init>(Lcom/android/mms/ui/NewMessageActivity;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NewMessageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1059
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 153
    invoke-super {p0, p1}, Lcom/android/mms/ui/MessageEditableActivityBase;->onNewIntent(Landroid/content/Intent;)V

    .line 155
    invoke-virtual {p0}, Lcom/android/mms/ui/NewMessageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 157
    const/high16 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 158
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/NewMessageActivity;->startActivity(Landroid/content/Intent;)V

    .line 159
    invoke-virtual {p0}, Lcom/android/mms/ui/NewMessageActivity;->finish()V

    .line 160
    return-void
.end method

.method public onPreMeasure(Lcom/android/mms/ui/SizeAwareLinearLayout;II)V
    .locals 23
    .parameter "view"
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 509
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/NewMessageActivity;->updateRecentContactListVisibility()V

    .line 510
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    .line 514
    .local v16, width:I
    const/16 v17, 0x320

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_0

    .line 515
    const/4 v3, 0x3

    .line 516
    .local v3, columnCount:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/NewMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0b002e

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 517
    .local v5, columnWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/NewMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0b002d

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 523
    .local v4, columnHeight:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mRecentContactGrid:Lcom/android/mms/ui/StaticGridView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mRecentContacts:Lcom/android/mms/data/ContactList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/data/ContactList;->size()I

    move-result v18

    add-int v18, v18, v3

    add-int/lit8 v18, v18, -0x1

    div-int v18, v18, v3

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v3, v5, v4}, Lcom/android/mms/ui/StaticGridView;->set(IIII)V

    .line 527
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mRecentContactGrid:Lcom/android/mms/ui/StaticGridView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/ui/StaticGridView;->getChildCount()I

    move-result v17

    move/from16 v0, v17

    if-ge v9, v0, :cond_2

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mRecentContactGrid:Lcom/android/mms/ui/StaticGridView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/android/mms/ui/StaticGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    const v18, 0x7f1000b7

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 529
    .local v8, divider:Landroid/view/View;
    rem-int v17, v9, v3

    if-nez v17, :cond_1

    .line 530
    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 527
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 519
    .end local v3           #columnCount:I
    .end local v4           #columnHeight:I
    .end local v5           #columnWidth:I
    .end local v8           #divider:Landroid/view/View;
    .end local v9           #i:I
    :cond_0
    const/4 v3, 0x6

    .line 520
    .restart local v3       #columnCount:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/NewMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0b0030

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 521
    .restart local v5       #columnWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/NewMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0b002f

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .restart local v4       #columnHeight:I
    goto :goto_0

    .line 532
    .restart local v8       #divider:Landroid/view/View;
    .restart local v9       #i:I
    :cond_1
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 535
    .end local v8           #divider:Landroid/view/View;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientAdapter:Lcom/android/mms/ui/RecipientsAdapter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/ui/RecipientsAdapter;->getCount()I

    move-result v17

    if-lez v17, :cond_5

    .line 536
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientRowHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsMaxHeightFinal:F

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mSuggestionList:Landroid/widget/ListView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ListView;->setVisibility(I)V

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mBottomPanel:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 545
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientRowsScroller:Landroid/widget/ScrollView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/NewMessageActivity;->isVisible(Landroid/view/View;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientEditorCount:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientEditorCount:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/NewMessageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v18

    const v19, 0x7f0a0128

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/NewMessageActivity;->recipientCount()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mContactPanel:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, p2

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientRows:Lcom/android/mms/ui/RowLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/ui/RowLayout;->getMeasuredHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsMaxHeight:F

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 553
    .local v11, recipientsHeightF:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientRows:Lcom/android/mms/ui/RowLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/ui/RowLayout;->getMeasuredHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsMaxHeightFinal:F

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 554
    .local v12, recipientsHeightFinalF:F
    sub-float v17, v11, v12

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    const v18, 0x3dcccccd

    cmpg-float v17, v17, v18

    if-gez v17, :cond_6

    .line 555
    const-wide/16 v17, 0x0

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/NewMessageActivity;->mPreviousAdjustTime:J

    .line 556
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsMaxHeightFinal:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsMaxHeight:F

    .line 580
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientRows:Lcom/android/mms/ui/RowLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/ui/RowLayout;->getMeasuredHeight()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsMaxHeight:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 581
    .local v10, recipientsHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientRowsScroller:Landroid/widget/ScrollView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v0, v10, :cond_3

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientRowsScroller:Landroid/widget/ScrollView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    move-object/from16 v0, v17

    iput v10, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientRowsScroller:Landroid/widget/ScrollView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 586
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mAddRecipientPanel:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    move/from16 v0, v17

    if-ge v10, v0, :cond_4

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientEditorCount:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    .line 593
    .end local v10           #recipientsHeight:I
    .end local v11           #recipientsHeightF:F
    .end local v12           #recipientsHeightFinalF:F
    :cond_4
    :goto_5
    invoke-super/range {p0 .. p3}, Lcom/android/mms/ui/MessageEditableActivityBase;->onPreMeasure(Lcom/android/mms/ui/SizeAwareLinearLayout;II)V

    .line 594
    return-void

    .line 540
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientRowHeight:I

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x3

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsMaxHeightFinal:F

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mSuggestionList:Landroid/widget/ListView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ListView;->setVisibility(I)V

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mBottomPanel:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 558
    .restart local v11       #recipientsHeightF:F
    .restart local v12       #recipientsHeightFinalF:F
    :cond_6
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mPreviousAdjustTime:J

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-nez v17, :cond_7

    .line 559
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/NewMessageActivity;->mPreviousAdjustTime:J

    .line 572
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/mms/ui/NewMessageActivity$10;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/mms/ui/NewMessageActivity$10;-><init>(Lcom/android/mms/ui/NewMessageActivity;)V

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_4

    .line 561
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 562
    .local v14, time:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mPreviousAdjustTime:J

    move-wide/from16 v17, v0

    sub-long v17, v14, v17

    move-wide/from16 v0, v17

    long-to-float v0, v0

    move/from16 v17, v0

    sget v18, Lcom/android/mms/ui/NewMessageActivity;->ADJUST_SPEED:F

    mul-float v13, v17, v18

    .line 563
    .local v13, step:F
    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/mms/ui/NewMessageActivity;->mPreviousAdjustTime:J

    .line 564
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsMaxHeightFinal:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsMaxHeight:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 565
    .local v7, dist:F
    invoke-static {v13, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 566
    .local v6, delta:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsMaxHeight:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsMaxHeightFinal:F

    move/from16 v18, v0

    cmpg-float v17, v17, v18

    if-gez v17, :cond_8

    .line 567
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsMaxHeight:F

    move/from16 v17, v0

    add-float v17, v17, v6

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsMaxHeight:F

    goto :goto_6

    .line 569
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsMaxHeight:F

    move/from16 v17, v0

    sub-float v17, v17, v6

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsMaxHeight:F

    goto :goto_6

    .line 590
    .end local v6           #delta:F
    .end local v7           #dist:F
    .end local v11           #recipientsHeightF:F
    .end local v12           #recipientsHeightFinalF:F
    .end local v13           #step:F
    .end local v14           #time:J
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientEditorCount:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1063
    invoke-super {p0, p1}, Lcom/android/mms/ui/MessageEditableActivityBase;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1064
    const v0, 0x7f1000e1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/mms/ui/MessageUtils;->makeMenuItemVisible(Landroid/view/Menu;IZ)Landroid/view/MenuItem;

    .line 1065
    const v0, 0x7f1000e2

    invoke-static {p1, v0, v2}, Lcom/android/mms/ui/MessageUtils;->makeMenuItemVisible(Landroid/view/Menu;IZ)Landroid/view/MenuItem;

    .line 1066
    return v2
.end method

.method protected onSoftInputStateChange(Z)V
    .locals 6
    .parameter "isSoftInputEnabled"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 200
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 202
    .local v2, pref:Landroid/content/SharedPreferences;
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/NewMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "guide_add_attachments"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 204
    new-instance v1, Lmiui/widget/GuidePopupWindow;

    invoke-direct {v1, p0}, Lmiui/widget/GuidePopupWindow;-><init>(Landroid/content/Context;)V

    .line 206
    .local v1, guidePopupWindow:Lmiui/widget/GuidePopupWindow;
    const v3, 0x7f0a0199

    invoke-virtual {v1, v3}, Lmiui/widget/GuidePopupWindow;->setGuideText(I)V

    .line 207
    invoke-virtual {v1, v5}, Lmiui/widget/GuidePopupWindow;->setArrowMode(I)V

    .line 208
    invoke-virtual {v1, v5}, Lmiui/widget/GuidePopupWindow;->setOutsideTouchable(Z)V

    .line 209
    invoke-virtual {v1, v4}, Lmiui/widget/GuidePopupWindow;->enableOutSideWindowTouchDismiss(Z)V

    .line 210
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lmiui/widget/GuidePopupWindow;->setInputMethodMode(I)V

    .line 211
    iget-object v3, p0, Lcom/android/mms/ui/NewMessageActivity;->mShowAttachmentPanelButton:Landroid/widget/Button;

    invoke-virtual {v1, v3, v4, v4, v5}, Lmiui/widget/GuidePopupWindow;->show(Landroid/view/View;IIZ)V

    .line 213
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 214
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "guide_add_attachments"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 215
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 217
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #guidePopupWindow:Lmiui/widget/GuidePopupWindow;
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 164
    invoke-super {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->onStart()V

    .line 165
    invoke-virtual {p0}, Lcom/android/mms/ui/NewMessageActivity;->initRecentList()V

    .line 166
    invoke-static {}, Lcom/android/mms/data/Contact;->resumeCaching()V

    .line 167
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 171
    invoke-super {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->onStop()V

    .line 172
    invoke-static {}, Lcom/android/mms/data/Contact;->stopCaching()V

    .line 173
    return-void
.end method

.method protected postExit()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 394
    invoke-super {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->postExit()V

    .line 395
    invoke-virtual {p0}, Lcom/android/mms/ui/NewMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "exit_animation_in"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 396
    .local v0, in:I
    invoke-virtual {p0}, Lcom/android/mms/ui/NewMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "exit_animation_out"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 397
    .local v1, out:I
    if-eq v0, v4, :cond_0

    if-eq v1, v4, :cond_0

    .line 398
    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/NewMessageActivity;->overridePendingTransition(II)V

    .line 400
    :cond_0
    return-void
.end method

.method protected recipientCount()I
    .locals 1

    .prologue
    .line 408
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessageActivity;->hasUncommitedRecipient()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mCommitedRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 411
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mCommitedRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    goto :goto_0
.end method

.method protected saveDraft(Z)V
    .locals 0
    .parameter "isStopping"

    .prologue
    .line 381
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessageActivity;->commitEditingRecipient()V

    .line 382
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessageActivity;->writeContactNumbers()V

    .line 383
    invoke-super {p0, p1}, Lcom/android/mms/ui/MessageEditableActivityBase;->saveDraft(Z)V

    .line 384
    return-void
.end method

.method public sendMessage()V
    .locals 6

    .prologue
    const v5, 0x1010355

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 886
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessageActivity;->commitEditingRecipient()V

    .line 887
    invoke-virtual {p0}, Lcom/android/mms/ui/NewMessageActivity;->hasInvalidRecipient()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 888
    invoke-virtual {p0}, Lcom/android/mms/ui/NewMessageActivity;->hasValidRecipient()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 889
    const v0, 0x7f0a0054

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/mms/ui/NewMessageActivity;->formatInvalidNumbers()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/NewMessageActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 890
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0059

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a007c

    new-instance v2, Lcom/android/mms/ui/NewMessageActivity$SendIgnoreInvalidRecipientListener;

    invoke-direct {v2, p0, v4}, Lcom/android/mms/ui/NewMessageActivity$SendIgnoreInvalidRecipientListener;-><init>(Lcom/android/mms/ui/NewMessageActivity;Lcom/android/mms/ui/NewMessageActivity$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0078

    new-instance v2, Lcom/android/mms/ui/NewMessageActivity$CancelSendingListener;

    invoke-direct {v2, p0, v4}, Lcom/android/mms/ui/NewMessageActivity$CancelSendingListener;-><init>(Lcom/android/mms/ui/NewMessageActivity;Lcom/android/mms/ui/NewMessageActivity$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 903
    :goto_0
    return-void

    .line 895
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a005a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a005b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0077

    new-instance v2, Lcom/android/mms/ui/NewMessageActivity$CancelSendingListener;

    invoke-direct {v2, p0, v4}, Lcom/android/mms/ui/NewMessageActivity$CancelSendingListener;-><init>(Lcom/android/mms/ui/NewMessageActivity;Lcom/android/mms/ui/NewMessageActivity$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 900
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessageActivity;->writeContactNumbers()V

    .line 901
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/NewMessageActivity;->checkAndSendMessage(Z)V

    goto :goto_0
.end method

.method public startNicknamePicker(Z)V
    .locals 0
    .parameter "clickByUser"

    .prologue
    .line 403
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessageActivity;->commitEditingRecipient()V

    .line 404
    invoke-super {p0, p1}, Lcom/android/mms/ui/MessageEditableActivityBase;->startNicknamePicker(Z)V

    .line 405
    return-void
.end method

.method protected willDiscardDraft()Z
    .locals 1

    .prologue
    .line 920
    invoke-virtual {p0}, Lcom/android/mms/ui/NewMessageActivity;->hasValidRecipient()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
