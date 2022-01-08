import nc from "next-connect";
import type { NextApiRequest, NextApiResponse } from "next";
import { StatusCodes, ReasonPhrases } from "http-status-codes";

const handler = nc<NextApiRequest, NextApiResponse>({
  onError(err, req, res, next) {
    console.log(err);
    res.status(StatusCodes.INTERNAL_SERVER_ERROR).json({
      status: ReasonPhrases.INTERNAL_SERVER_ERROR,
      error: err.message,
    });
  },
});

export default handler;
