.class public Lcom/android/mms/ui/ConversationListItem;
.super Landroid/view/ViewGroup;
.source "ConversationListItem.java"

# interfaces
.implements Lcom/android/mms/data/Contact$UpdateListener;


# static fields
.field private static final BACKGROUND_RESID:[I


# instance fields
.field private mAttachmentIndicator:Landroid/view/View;

.field private final mAvatarSize:I

.field private mAvatarView:Landroid/widget/QuickContactBadge;

.field private mBackgroundIndex:I

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mConversation:Lcom/android/mms/data/Conversation;

.field private mCountBuffer:[C

.field private final mDateRightPadding:I

.field private mDateView:Landroid/widget/TextView;

.field private mDraftIndicator:Landroid/view/View;

.field private mErrorIndicator:Landroid/view/View;

.field private mFetionPrefix:Landroid/view/View;

.field private mFromBuffer:[C

.field private final mFromRightPadding:I

.field private final mFromTopAscent:I

.field private mFromView:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private final mIndicatorPadding:I

.field private final mIndicatorSize:I

.field private final mListItemPaddingOuter:I

.field private mMsgCountView:Landroid/widget/TextView;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mSubjectView:Landroid/widget/TextView;

.field private mTimeBuffer:Ljava/nio/CharBuffer;

.field private mTimedIndicator:Landroid/view/View;

.field private mUnreadMsgCountView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/mms/ui/ConversationListItem;->BACKGROUND_RESID:[I

    return-void

    :array_0
    .array-data 0x4
        0x80t 0x1t 0x2t 0x3t
        0x7dt 0x1t 0x2t 0x3t
        0x74t 0x1t 0x2t 0x3t
        0x71t 0x1t 0x2t 0x3t
        0x7ct 0x1t 0x2t 0x3t
        0x79t 0x1t 0x2t 0x3t
        0x78t 0x1t 0x2t 0x3t
        0x75t 0x1t 0x2t 0x3t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mHandler:Landroid/os/Handler;

    .line 85
    const/16 v0, 0x40

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFromBuffer:[C

    .line 86
    const/16 v0, 0x10

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mCountBuffer:[C

    .line 87
    const/16 v0, 0x20

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mTimeBuffer:Ljava/nio/CharBuffer;

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarSize:I

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ConversationListItem;->mListItemPaddingOuter:I

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFromTopAscent:I

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFromRightPadding:I

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ConversationListItem;->mDateRightPadding:I

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ConversationListItem;->mIndicatorPadding:I

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ConversationListItem;->mIndicatorSize:I

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ConversationListItem;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItem;->updateFromView()V

    return-void
.end method

.method private updateAvatarView()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    const v5, 0x302004a

    const/4 v4, 0x1

    .line 134
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->size()I

    move-result v1

    .line 135
    .local v1, contactsSize:I
    if-nez v1, :cond_0

    .line 136
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2, v3}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 137
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2, v5}, Landroid/widget/QuickContactBadge;->setImageResource(I)V

    .line 138
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-static {v2}, Lcom/android/mms/data/Contact;->cancelRequest(Landroid/widget/ImageView;)V

    .line 163
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2, v6}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 164
    return-void

    .line 139
    :cond_0
    if-ne v1, v4, :cond_4

    .line 140
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 141
    .local v0, contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 142
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 143
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-static {v2, v0}, Lcom/android/mms/data/Contact;->loadPhoto(Landroid/widget/ImageView;Lcom/android/mms/data/Contact;)V

    goto :goto_0

    .line 144
    :cond_1
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->isSPNumber()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 145
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    .line 146
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-static {v2, v0}, Lcom/android/mms/data/Contact;->loadPhoto(Landroid/widget/ImageView;Lcom/android/mms/data/Contact;)V

    goto :goto_0

    .line 147
    :cond_2
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->isEmail()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 148
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-static {v2}, Lcom/android/mms/data/Contact;->cancelRequest(Landroid/widget/ImageView;)V

    .line 149
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    .line 150
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2, v5}, Landroid/widget/QuickContactBadge;->setImageResource(I)V

    goto :goto_0

    .line 153
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-static {v2}, Lcom/android/mms/data/Contact;->cancelRequest(Landroid/widget/ImageView;)V

    .line 154
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    .line 155
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2, v5}, Landroid/widget/QuickContactBadge;->setImageResource(I)V

    goto :goto_0

    .line 159
    .end local v0           #contact:Lcom/android/mms/data/Contact;
    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2, v3}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 160
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-static {v2}, Lcom/android/mms/data/Contact;->cancelRequest(Landroid/widget/ImageView;)V

    .line 161
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const v3, 0x3020047

    invoke-virtual {v2, v3}, Landroid/widget/QuickContactBadge;->setImageResource(I)V

    goto :goto_0
.end method

.method private updateAvatarVisibility()V
    .locals 4

    .prologue
    .line 167
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "pref_key_conversation_show_avatar"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 170
    .local v0, show:Z
    if-eqz v0, :cond_0

    .line 171
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 172
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItem;->updateAvatarView()V

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateFromView()V
    .locals 4

    .prologue
    .line 179
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mFromBuffer:[C

    const-string v3, ", "

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/data/ContactList;->formatNames([CLjava/lang/String;)I

    move-result v0

    .line 180
    .local v0, fromLength:I
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mFromBuffer:[C

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/widget/TextView;->setText([CII)V

    .line 181
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItem;->updateAvatarVisibility()V

    .line 182
    return-void
.end method


# virtual methods
.method public final bind(Landroid/content/Context;Lcom/android/mms/data/Conversation;ZLandroid/database/Cursor;)V
    .locals 21
    .parameter "context"
    .parameter "conversation"
    .parameter "isCheckMode"
    .parameter "cursor"

    .prologue
    .line 195
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    .line 198
    if-eqz p3, :cond_2

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mCheckBox:Landroid/widget/CheckBox;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 204
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->isChecked()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mCheckBox:Landroid/widget/CheckBox;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 210
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->isChecked()Z

    move-result v17

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/ConversationListItem;->setBackground(Landroid/database/Cursor;Z)V

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mTimeBuffer:Ljava/nio/CharBuffer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 214
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->getDate()J

    move-result-wide v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mTimeBuffer:Ljava/nio/CharBuffer;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v17

    move-object/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lmiui/util/MiuiDateUtils;->getRelativeTimeSpanString(Landroid/content/Context;JLjava/nio/CharBuffer;)V

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mTimeBuffer:Ljava/nio/CharBuffer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mTimeBuffer:Ljava/nio/CharBuffer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/nio/CharBuffer;->position()I

    move-result v20

    invoke-virtual/range {v17 .. v20}, Landroid/widget/TextView;->setText([CII)V

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mFromBuffer:[C

    move-object/from16 v18, v0

    const-string v19, ", "

    invoke-virtual/range {v17 .. v19}, Lcom/android/mms/data/ContactList;->formatNames([CLjava/lang/String;)I

    move-result v6

    .line 219
    .local v6, fromLength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mFromBuffer:[C

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v6}, Landroid/widget/TextView;->setText([CII)V

    .line 220
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->getUnreadMessageCount()I

    move-result v17

    if-lez v17, :cond_4

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0e0012

    invoke-virtual/range {v17 .. v19}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 227
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mFetionPrefix:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/data/ContactList;->size()I

    move-result v17

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v17

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/mms/data/Contact;

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/mms/util/AddressUtils;->isFetionNumber(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    const/16 v17, 0x0

    :goto_3
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 233
    invoke-static/range {p0 .. p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 236
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->getUnreadMessageCount()I

    move-result v17

    if-lez v17, :cond_6

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mMsgCountView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mUnreadMsgCountView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mCountBuffer:[C

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->getUnreadMessageCount()I

    move-result v19

    invoke-static/range {v17 .. v19}, Lcom/android/mms/ui/MessageUtils;->appendIntToCharArray([CII)I

    move-result v5

    .line 240
    .local v5, end:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mUnreadMsgCountView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mCountBuffer:[C

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v5}, Landroid/widget/TextView;->setText([CII)V

    .line 254
    .end local v5           #end:I
    :goto_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->getSnippet()Ljava/lang/String;

    move-result-object v16

    .line 255
    .local v16, subject:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->hasDraft()Z

    move-result v17

    if-eqz v17, :cond_b

    .line 256
    const/4 v15, 0x0

    .line 257
    .local v15, s:Landroid/text/SpannableStringBuilder;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_5
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v12, v0, :cond_9

    .line 258
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 259
    .local v4, c:C
    const v17, 0xffff

    move/from16 v0, v17

    if-ne v4, v0, :cond_8

    .line 260
    if-nez v15, :cond_0

    .line 261
    new-instance v15, Landroid/text/SpannableStringBuilder;

    .end local v15           #s:Landroid/text/SpannableStringBuilder;
    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 264
    .restart local v15       #s:Landroid/text/SpannableStringBuilder;
    :cond_0
    const v17, 0x7f0a0125

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 265
    .local v13, nicknamePlaceHolder:Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v11

    .line 267
    .local v11, holderLen:I
    invoke-virtual {v15, v13}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 268
    invoke-virtual {v15}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    .line 269
    .restart local v5       #end:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 270
    .local v14, res:Landroid/content/res/Resources;
    new-instance v17, Landroid/text/style/BackgroundColorSpan;

    const v18, 0x7f09000b

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    invoke-direct/range {v17 .. v18}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    sub-int v18, v5, v11

    const/16 v19, 0x21

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v15, v0, v1, v5, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 272
    new-instance v17, Landroid/text/style/ForegroundColorSpan;

    const v18, 0x7f09000a

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    invoke-direct/range {v17 .. v18}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sub-int v18, v5, v11

    const/16 v19, 0x21

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v15, v0, v1, v5, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 257
    .end local v5           #end:I
    .end local v11           #holderLen:I
    .end local v13           #nicknamePlaceHolder:Ljava/lang/String;
    .end local v14           #res:Landroid/content/res/Resources;
    :cond_1
    :goto_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 201
    .end local v4           #c:C
    .end local v6           #fromLength:I
    .end local v12           #i:I
    .end local v15           #s:Landroid/text/SpannableStringBuilder;
    .end local v16           #subject:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mCheckBox:Landroid/widget/CheckBox;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_0

    .line 207
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mCheckBox:Landroid/widget/CheckBox;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_1

    .line 223
    .restart local v6       #fromLength:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0e0011

    invoke-virtual/range {v17 .. v19}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto/16 :goto_2

    .line 227
    :cond_5
    const/16 v17, 0x8

    goto/16 :goto_3

    .line 241
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_7

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mMsgCountView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mUnreadMsgCountView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mCountBuffer:[C

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x28

    aput-char v19, v17, v18

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mCountBuffer:[C

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v19

    invoke-static/range {v17 .. v19}, Lcom/android/mms/ui/MessageUtils;->appendIntToCharArray([CII)I

    move-result v5

    .line 246
    .restart local v5       #end:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mCountBuffer:[C

    move-object/from16 v17, v0

    const/16 v18, 0x29

    aput-char v18, v17, v5

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mMsgCountView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mCountBuffer:[C

    move-object/from16 v18, v0

    const/16 v19, 0x0

    add-int/lit8 v20, v5, 0x1

    invoke-virtual/range {v17 .. v20}, Landroid/widget/TextView;->setText([CII)V

    goto/16 :goto_4

    .line 249
    .end local v5           #end:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mMsgCountView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mUnreadMsgCountView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 274
    .restart local v4       #c:C
    .restart local v12       #i:I
    .restart local v15       #s:Landroid/text/SpannableStringBuilder;
    .restart local v16       #subject:Ljava/lang/String;
    :cond_8
    if-eqz v15, :cond_1

    .line 275
    invoke-virtual {v15, v4}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_6

    .line 279
    .end local v4           #c:C
    :cond_9
    if-eqz v15, :cond_a

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    .end local v12           #i:I
    .end local v15           #s:Landroid/text/SpannableStringBuilder;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->hasError()Z

    move-result v9

    .line 290
    .local v9, hasError:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mErrorIndicator:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v9, :cond_c

    const/16 v17, 0x0

    :goto_8
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Lcom/android/mms/data/Conversation$TimedThreads;->hasTimedMessage(J)Z

    move-result v10

    .line 293
    .local v10, hasTimedMsg:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mTimedIndicator:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v10, :cond_d

    const/16 v17, 0x0

    :goto_9
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 296
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->hasAttachment()Z

    move-result v7

    .line 297
    .local v7, hasAttachment:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mAttachmentIndicator:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v7, :cond_e

    const/16 v17, 0x0

    :goto_a
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 300
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->hasDraft()Z

    move-result v8

    .line 301
    .local v8, hasDraft:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mDraftIndicator:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v8, :cond_f

    const/16 v17, 0x0

    :goto_b
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 303
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/ConversationListItem;->updateAvatarVisibility()V

    .line 304
    return-void

    .line 282
    .end local v7           #hasAttachment:Z
    .end local v8           #hasDraft:Z
    .end local v9           #hasError:Z
    .end local v10           #hasTimedMsg:Z
    .restart local v12       #i:I
    .restart local v15       #s:Landroid/text/SpannableStringBuilder;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 285
    .end local v12           #i:I
    .end local v15           #s:Landroid/text/SpannableStringBuilder;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 290
    .restart local v9       #hasError:Z
    :cond_c
    const/16 v17, 0x8

    goto :goto_8

    .line 293
    .restart local v10       #hasTimedMsg:Z
    :cond_d
    const/16 v17, 0x8

    goto :goto_9

    .line 297
    .restart local v7       #hasAttachment:Z
    :cond_e
    const/16 v17, 0x8

    goto :goto_a

    .line 301
    .restart local v8       #hasDraft:Z
    :cond_f
    const/16 v17, 0x8

    goto :goto_b
.end method

.method public onCheckStateChanged(Z)V
    .locals 2
    .parameter "checked"

    .prologue
    .line 337
    if-eqz p1, :cond_0

    .line 339
    iget v0, p0, Lcom/android/mms/ui/ConversationListItem;->mBackgroundIndex:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/mms/ui/ConversationListItem;->mBackgroundIndex:I

    .line 344
    :goto_0
    sget-object v0, Lcom/android/mms/ui/ConversationListItem;->BACKGROUND_RESID:[I

    iget v1, p0, Lcom/android/mms/ui/ConversationListItem;->mBackgroundIndex:I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->setBackgroundResource(I)V

    .line 345
    return-void

    .line 342
    :cond_0
    iget v0, p0, Lcom/android/mms/ui/ConversationListItem;->mBackgroundIndex:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/mms/ui/ConversationListItem;->mBackgroundIndex:I

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 113
    const v0, 0x7f100013

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/QuickContactBadge;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    .line 114
    const v0, 0x7f100014

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFetionPrefix:Landroid/view/View;

    .line 115
    const v0, 0x7f100015

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    .line 116
    const v0, 0x7f100016

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mMsgCountView:Landroid/widget/TextView;

    .line 117
    const v0, 0x7f100017

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mUnreadMsgCountView:Landroid/widget/TextView;

    .line 118
    const v0, 0x7f100018

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    .line 119
    const v0, 0x7f100019

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    .line 120
    const v0, 0x7f10001a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAttachmentIndicator:Landroid/view/View;

    .line 121
    const v0, 0x7f10001b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mTimedIndicator:Landroid/view/View;

    .line 122
    const v0, 0x7f10001c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mDraftIndicator:Landroid/view/View;

    .line 123
    const v0, 0x7f10001d

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mErrorIndicator:Landroid/view/View;

    .line 124
    const v0, 0x1020001

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mCheckBox:Landroid/widget/CheckBox;

    .line 126
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mPreferences:Landroid/content/SharedPreferences;

    .line 127
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 399
    iget v4, p0, Lcom/android/mms/ui/ConversationListItem;->mPaddingLeft:I

    .line 400
    .local v4, x:I
    iget v6, p0, Lcom/android/mms/ui/ConversationListItem;->mPaddingTop:I

    iget v7, p0, Lcom/android/mms/ui/ConversationListItem;->mListItemPaddingOuter:I

    add-int v5, v6, v7

    .line 403
    .local v5, y:I
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    iget v7, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarSize:I

    add-int/2addr v7, v4

    iget v8, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarSize:I

    add-int/2addr v8, v5

    invoke-virtual {v6, v4, v5, v7, v8}, Landroid/widget/QuickContactBadge;->layout(IIII)V

    .line 404
    iget v6, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarSize:I

    add-int/2addr v4, v6

    .line 405
    iget v6, p0, Lcom/android/mms/ui/ConversationListItem;->mListItemPaddingOuter:I

    add-int/2addr v4, v6

    .line 408
    sub-int v6, p5, p3

    iget v7, p0, Lcom/android/mms/ui/ConversationListItem;->mPaddingTop:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/mms/ui/ConversationListItem;->mPaddingBottom:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/mms/ui/ConversationListItem;->mListItemPaddingOuter:I

    mul-int/lit8 v7, v7, 0x2

    sub-int v2, v6, v7

    .line 409
    .local v2, height:I
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    .line 410
    iget v6, p0, Lcom/android/mms/ui/ConversationListItem;->mListItemPaddingOuter:I

    iget v7, p0, Lcom/android/mms/ui/ConversationListItem;->mPaddingTop:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7}, Landroid/widget/CheckBox;->getMeasuredHeight()I

    move-result v7

    sub-int v7, v2, v7

    div-int/lit8 v7, v7, 0x2

    add-int v3, v6, v7

    .line 411
    .local v3, top:I
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mCheckBox:Landroid/widget/CheckBox;

    iget v7, p0, Lcom/android/mms/ui/ConversationListItem;->mPaddingRight:I

    sub-int v7, p4, v7

    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->getMeasuredWidth()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/mms/ui/ConversationListItem;->mPaddingRight:I

    sub-int v8, p4, v8

    iget-object v9, p0, Lcom/android/mms/ui/ConversationListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v9}, Landroid/widget/CheckBox;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v3

    invoke-virtual {v6, v7, v3, v8, v9}, Landroid/widget/CheckBox;->layout(IIII)V

    .line 416
    .end local v3           #top:I
    :cond_0
    iget v6, p0, Lcom/android/mms/ui/ConversationListItem;->mFromTopAscent:I

    sub-int/2addr v5, v6

    .line 418
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v4

    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {v6, v4, v5, v7, v8}, Landroid/widget/TextView;->layout(IIII)V

    .line 419
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v4

    iget v7, p0, Lcom/android/mms/ui/ConversationListItem;->mFromRightPadding:I

    add-int v0, v6, v7

    .line 420
    .local v0, countX:I
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mMsgCountView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_6

    .line 421
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getBaseline()I

    move-result v6

    add-int/2addr v6, v5

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListItem;->mMsgCountView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getBaseline()I

    move-result v7

    sub-int v1, v6, v7

    .line 422
    .local v1, countY:I
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mMsgCountView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListItem;->mMsgCountView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v0

    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mMsgCountView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v1

    invoke-virtual {v6, v0, v1, v7, v8}, Landroid/widget/TextView;->layout(IIII)V

    .line 433
    .end local v1           #countY:I
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    .line 436
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v4

    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {v6, v4, v5, v7, v8}, Landroid/widget/TextView;->layout(IIII)V

    .line 437
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    .line 440
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v4

    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {v6, v4, v5, v7, v8}, Landroid/widget/TextView;->layout(IIII)V

    .line 441
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v4, v6

    .line 442
    iget v6, p0, Lcom/android/mms/ui/ConversationListItem;->mDateRightPadding:I

    add-int/2addr v4, v6

    .line 443
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getBaseline()I

    move-result v6

    add-int/2addr v5, v6

    .line 445
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mAttachmentIndicator:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_2

    .line 446
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mAttachmentIndicator:Landroid/view/View;

    iget v7, p0, Lcom/android/mms/ui/ConversationListItem;->mIndicatorSize:I

    sub-int v7, v5, v7

    iget v8, p0, Lcom/android/mms/ui/ConversationListItem;->mIndicatorSize:I

    add-int/2addr v8, v4

    invoke-virtual {v6, v4, v7, v8, v5}, Landroid/view/View;->layout(IIII)V

    .line 447
    iget v6, p0, Lcom/android/mms/ui/ConversationListItem;->mIndicatorSize:I

    add-int/2addr v4, v6

    .line 448
    iget v6, p0, Lcom/android/mms/ui/ConversationListItem;->mIndicatorPadding:I

    add-int/2addr v4, v6

    .line 450
    :cond_2
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mTimedIndicator:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_3

    .line 451
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mTimedIndicator:Landroid/view/View;

    iget v7, p0, Lcom/android/mms/ui/ConversationListItem;->mIndicatorSize:I

    sub-int v7, v5, v7

    iget v8, p0, Lcom/android/mms/ui/ConversationListItem;->mIndicatorSize:I

    add-int/2addr v8, v4

    invoke-virtual {v6, v4, v7, v8, v5}, Landroid/view/View;->layout(IIII)V

    .line 452
    iget v6, p0, Lcom/android/mms/ui/ConversationListItem;->mIndicatorSize:I

    add-int/2addr v4, v6

    .line 453
    iget v6, p0, Lcom/android/mms/ui/ConversationListItem;->mIndicatorPadding:I

    add-int/2addr v4, v6

    .line 455
    :cond_3
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mDraftIndicator:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_4

    .line 456
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mDraftIndicator:Landroid/view/View;

    iget v7, p0, Lcom/android/mms/ui/ConversationListItem;->mIndicatorSize:I

    sub-int v7, v5, v7

    iget v8, p0, Lcom/android/mms/ui/ConversationListItem;->mIndicatorSize:I

    add-int/2addr v8, v4

    invoke-virtual {v6, v4, v7, v8, v5}, Landroid/view/View;->layout(IIII)V

    .line 457
    iget v6, p0, Lcom/android/mms/ui/ConversationListItem;->mIndicatorSize:I

    add-int/2addr v4, v6

    .line 458
    iget v6, p0, Lcom/android/mms/ui/ConversationListItem;->mIndicatorPadding:I

    add-int/2addr v4, v6

    .line 460
    :cond_4
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mErrorIndicator:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_5

    .line 461
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mErrorIndicator:Landroid/view/View;

    iget v7, p0, Lcom/android/mms/ui/ConversationListItem;->mIndicatorSize:I

    sub-int v7, v5, v7

    iget v8, p0, Lcom/android/mms/ui/ConversationListItem;->mIndicatorSize:I

    add-int/2addr v8, v4

    invoke-virtual {v6, v4, v7, v8, v5}, Landroid/view/View;->layout(IIII)V

    .line 463
    :cond_5
    return-void

    .line 426
    :cond_6
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mUnreadMsgCountView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_1

    .line 427
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getBaseline()I

    move-result v6

    add-int/2addr v6, v5

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListItem;->mUnreadMsgCountView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    sub-int v1, v6, v7

    .line 428
    .restart local v1       #countY:I
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mUnreadMsgCountView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListItem;->mUnreadMsgCountView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v0

    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mUnreadMsgCountView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v1

    invoke-virtual {v6, v0, v1, v7, v8}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 10
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v9, -0x8000

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 356
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    iget v6, p0, Lcom/android/mms/ui/ConversationListItem;->mPaddingLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/mms/ui/ConversationListItem;->mPaddingRight:I

    sub-int v0, v5, v6

    .line 359
    .local v0, contentWidth:I
    iget v5, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarSize:I

    iget v6, p0, Lcom/android/mms/ui/ConversationListItem;->mListItemPaddingOuter:I

    add-int/2addr v5, v6

    sub-int/2addr v0, v5

    .line 362
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v5

    if-eq v5, v8, :cond_0

    .line 363
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v7, v7}, Landroid/widget/CheckBox;->measure(II)V

    .line 364
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->getMeasuredWidth()I

    move-result v5

    iget v6, p0, Lcom/android/mms/ui/ConversationListItem;->mListItemPaddingOuter:I

    add-int/2addr v5, v6

    sub-int/2addr v0, v5

    .line 368
    :cond_0
    const/4 v1, 0x0

    .line 369
    .local v1, countWidth:I
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mMsgCountView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-eq v5, v8, :cond_2

    .line 370
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mMsgCountView:Landroid/widget/TextView;

    invoke-virtual {v5, v7, v7}, Landroid/widget/TextView;->measure(II)V

    .line 371
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mMsgCountView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    iget v6, p0, Lcom/android/mms/ui/ConversationListItem;->mFromRightPadding:I

    add-int v1, v5, v6

    .line 377
    :cond_1
    :goto_0
    sub-int v3, v0, v1

    .line 378
    .local v3, maxFromWidth:I
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->measure(II)V

    .line 383
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->measure(II)V

    .line 388
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v5, v7, v7}, Landroid/widget/TextView;->measure(II)V

    .line 390
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 391
    .local v4, width:I
    iget v5, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarSize:I

    iget v6, p0, Lcom/android/mms/ui/ConversationListItem;->mPaddingTop:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/mms/ui/ConversationListItem;->mPaddingBottom:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/mms/ui/ConversationListItem;->mListItemPaddingOuter:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    invoke-static {v5, p2}, Lcom/android/mms/ui/ConversationListItem;->getDefaultSize(II)I

    move-result v2

    .line 394
    .local v2, height:I
    invoke-virtual {p0, v4, v2}, Lcom/android/mms/ui/ConversationListItem;->setMeasuredDimension(II)V

    .line 395
    return-void

    .line 372
    .end local v2           #height:I
    .end local v3           #maxFromWidth:I
    .end local v4           #width:I
    :cond_2
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mUnreadMsgCountView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-eq v5, v8, :cond_1

    .line 373
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mUnreadMsgCountView:Landroid/widget/TextView;

    invoke-virtual {v5, v7, v7}, Landroid/widget/TextView;->measure(II)V

    .line 374
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mUnreadMsgCountView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    iget v6, p0, Lcom/android/mms/ui/ConversationListItem;->mFromRightPadding:I

    add-int v1, v5, v6

    goto :goto_0
.end method

.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .locals 2
    .parameter "updated"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/ui/ConversationListItem$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationListItem$1;-><init>(Lcom/android/mms/ui/ConversationListItem;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 190
    return-void
.end method

.method protected setBackground(Landroid/database/Cursor;Z)V
    .locals 2
    .parameter "cursor"
    .parameter "isItemChecked"

    .prologue
    const/4 v1, 0x1

    .line 308
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 309
    if-eqz p2, :cond_0

    .line 310
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/ConversationListItem;->mBackgroundIndex:I

    .line 333
    :goto_0
    sget-object v0, Lcom/android/mms/ui/ConversationListItem;->BACKGROUND_RESID:[I

    iget v1, p0, Lcom/android/mms/ui/ConversationListItem;->mBackgroundIndex:I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->setBackgroundResource(I)V

    .line 334
    return-void

    .line 312
    :cond_0
    iput v1, p0, Lcom/android/mms/ui/ConversationListItem;->mBackgroundIndex:I

    goto :goto_0

    .line 314
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->isFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 315
    if-eqz p2, :cond_2

    .line 316
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/mms/ui/ConversationListItem;->mBackgroundIndex:I

    goto :goto_0

    .line 318
    :cond_2
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/mms/ui/ConversationListItem;->mBackgroundIndex:I

    goto :goto_0

    .line 320
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 321
    if-eqz p2, :cond_4

    .line 322
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/mms/ui/ConversationListItem;->mBackgroundIndex:I

    goto :goto_0

    .line 324
    :cond_4
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/mms/ui/ConversationListItem;->mBackgroundIndex:I

    goto :goto_0

    .line 327
    :cond_5
    if-eqz p2, :cond_6

    .line 328
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/mms/ui/ConversationListItem;->mBackgroundIndex:I

    goto :goto_0

    .line 330
    :cond_6
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/mms/ui/ConversationListItem;->mBackgroundIndex:I

    goto :goto_0
.end method

.method public final unbind()V
    .locals 0

    .prologue
    .line 350
    invoke-static {p0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 351
    return-void
.end method
