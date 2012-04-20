.class public Lcom/miui/milk/common/ContactInfo;
.super Ljava/lang/Object;
.source "ContactInfo.java"


# instance fields
.field public checked:Z

.field public contact:Lcom/miui/milk/model/ContactProtos2$Contact;

.field public error:Z

.field public id:I

.field public name:Ljava/lang/String;

.field public summary:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/milk/common/ContactInfo;->id:I

    .line 7
    iput-object v1, p0, Lcom/miui/milk/common/ContactInfo;->contact:Lcom/miui/milk/model/ContactProtos2$Contact;

    .line 8
    iput-object v1, p0, Lcom/miui/milk/common/ContactInfo;->name:Ljava/lang/String;

    .line 9
    iput-object v1, p0, Lcom/miui/milk/common/ContactInfo;->summary:Ljava/lang/String;

    .line 10
    iput-boolean v2, p0, Lcom/miui/milk/common/ContactInfo;->checked:Z

    .line 11
    iput-boolean v2, p0, Lcom/miui/milk/common/ContactInfo;->error:Z

    return-void
.end method
