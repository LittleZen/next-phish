export interface EmailTemplateFormValues {
  name: string;
  subject: string;
  tags: string[];
  status: "DRAFT" | "ACTIVE";
  trackingPixel: boolean;
}
