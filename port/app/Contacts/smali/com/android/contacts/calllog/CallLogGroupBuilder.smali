.class public Lcom/android/contacts/calllog/CallLogGroupBuilder;
.super Ljava/lang/Object;
.source "CallLogGroupBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/calllog/CallLogGroupBuilder$GroupCreator;
    }
.end annotation


# instance fields
.field private mBuffer1:Landroid/database/CharArrayBuffer;

.field private mBuffer2:Landroid/database/CharArrayBuffer;

.field private final mGroupCreator:Lcom/android/contacts/calllog/CallLogGroupBuilder$GroupCreator;


# direct methods
.method public constructor <init>(Lcom/android/contacts/calllog/CallLogGroupBuilder$GroupCreator;)V
    .locals 2
    .parameter "groupCreator"

    .prologue
    const/16 v1, 0x80

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/database/CharArrayBuffer;

    invoke-direct {v0, v1}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogGroupBuilder;->mBuffer1:Landroid/database/CharArrayBuffer;

    .line 39
    new-instance v0, Landroid/database/CharArrayBuffer;

    invoke-direct {v0, v1}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogGroupBuilder;->mBuffer2:Landroid/database/CharArrayBuffer;

    .line 45
    iput-object p1, p0, Lcom/android/contacts/calllog/CallLogGroupBuilder;->mGroupCreator:Lcom/android/contacts/calllog/CallLogGroupBuilder$GroupCreator;

    .line 46
    return-void
.end method

.method private addGroup(II)V
    .locals 2
    .parameter "cursorPosition"
    .parameter "size"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogGroupBuilder;->mGroupCreator:Lcom/android/contacts/calllog/CallLogGroupBuilder$GroupCreator;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/android/contacts/calllog/CallLogGroupBuilder$GroupCreator;->addGroup(IIZ)V

    .line 130
    return-void
.end method

.method private equalPhoneNumbers(Landroid/database/CharArrayBuffer;Landroid/database/CharArrayBuffer;)Z
    .locals 5
    .parameter "buffer1"
    .parameter "buffer2"

    .prologue
    const/4 v4, 0x0

    .line 135
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Landroid/database/CharArrayBuffer;->data:[C

    iget v2, p1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-direct {v0, v1, v4, v2}, Ljava/lang/String;-><init>([CII)V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p2, Landroid/database/CharArrayBuffer;->data:[C

    iget v3, p2, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addGroups(Landroid/database/Cursor;)V
    .locals 14
    .parameter "cursor"

    .prologue
    const/4 v13, 0x3

    const/4 v10, 0x0

    const/4 v12, 0x4

    const/4 v9, 0x1

    .line 60
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 61
    .local v1, count:I
    if-nez v1, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    const/4 v2, 0x1

    .line 67
    .local v2, currentGroupSize:I
    iget-object v5, p0, Lcom/android/contacts/calllog/CallLogGroupBuilder;->mBuffer1:Landroid/database/CharArrayBuffer;

    .line 69
    .local v5, firstNumber:Landroid/database/CharArrayBuffer;
    iget-object v3, p0, Lcom/android/contacts/calllog/CallLogGroupBuilder;->mBuffer2:Landroid/database/CharArrayBuffer;

    .line 70
    .local v3, currentNumber:Landroid/database/CharArrayBuffer;
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 71
    invoke-interface {p1, v9, v5}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 73
    invoke-interface {p1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 74
    .local v4, firstCallType:I
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 75
    invoke-interface {p1, v9, v3}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 76
    invoke-interface {p1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 77
    .local v0, callType:I
    invoke-direct {p0, v5, v3}, Lcom/android/contacts/calllog/CallLogGroupBuilder;->equalPhoneNumbers(Landroid/database/CharArrayBuffer;Landroid/database/CharArrayBuffer;)Z

    move-result v6

    .line 80
    .local v6, sameNumber:Z
    invoke-static {p1}, Lcom/android/contacts/calllog/CallLogQuery;->isSectionHeader(Landroid/database/Cursor;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 82
    const/4 v7, 0x0

    .line 95
    .local v7, shouldGroup:Z
    :goto_2
    if-eqz v7, :cond_9

    .line 98
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 83
    .end local v7           #shouldGroup:Z
    :cond_2
    if-nez v6, :cond_3

    .line 85
    const/4 v7, 0x0

    .restart local v7       #shouldGroup:Z
    goto :goto_2

    .line 86
    .end local v7           #shouldGroup:Z
    :cond_3
    if-eq v4, v12, :cond_4

    if-ne v4, v13, :cond_6

    .line 89
    :cond_4
    if-ne v0, v13, :cond_5

    move v7, v9

    .restart local v7       #shouldGroup:Z
    :goto_3
    goto :goto_2

    .end local v7           #shouldGroup:Z
    :cond_5
    move v7, v10

    goto :goto_3

    .line 92
    :cond_6
    if-eq v0, v9, :cond_7

    const/4 v11, 0x2

    if-ne v0, v11, :cond_8

    :cond_7
    move v7, v9

    .restart local v7       #shouldGroup:Z
    :goto_4
    goto :goto_2

    .end local v7           #shouldGroup:Z
    :cond_8
    move v7, v10

    goto :goto_4

    .line 102
    .restart local v7       #shouldGroup:Z
    :cond_9
    if-le v2, v9, :cond_a

    .line 103
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v11

    sub-int/2addr v11, v2

    invoke-direct {p0, v11, v2}, Lcom/android/contacts/calllog/CallLogGroupBuilder;->addGroup(II)V

    .line 106
    :cond_a
    const/4 v2, 0x1

    .line 109
    move v4, v0

    .line 110
    move-object v8, v5

    .line 111
    .local v8, temp:Landroid/database/CharArrayBuffer;
    move-object v5, v3

    .line 112
    move-object v3, v8

    goto :goto_1

    .line 116
    .end local v0           #callType:I
    .end local v6           #sameNumber:Z
    .end local v7           #shouldGroup:Z
    .end local v8           #temp:Landroid/database/CharArrayBuffer;
    :cond_b
    if-le v2, v9, :cond_0

    .line 117
    sub-int v9, v1, v2

    invoke-direct {p0, v9, v2}, Lcom/android/contacts/calllog/CallLogGroupBuilder;->addGroup(II)V

    goto :goto_0
.end method
